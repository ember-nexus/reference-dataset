#!/bin/bash

extract_ids() {
    local parent_folder="$1"
    local output_file="$2"

    echo "" > "$output_file"

    find "$parent_folder" -type f -name "*.json" | while read -r json_file; do
        id_value=$(jq -r '.id' "$json_file")

        if [ ! -z "$id_value" ]; then
            echo "$id_value" >> "$output_file"
            echo -n "."
        fi
    done
    echo ""

    sort "$output_file" -o "$output_file"
}

echo "Processing backup..."

extract_ids "./node" "node_ids.txt"
extract_ids "./relation" "relation_ids.txt"
extract_ids "./file" "file_ids.txt"

cat node_ids.txt relation_ids.txt file_ids.txt > all_ids.txt

duplicates=$(uniq -cd all_ids.txt)

if [[ -n "$duplicates" ]]; then
    echo "Error: Duplicate entries found within nodes, relations and files."
    echo "Duplicate IDs:"
    echo $duplicates
    exit 1
fi

echo "No duplicate ids found."
echo ""

node_count=$(cat node_ids.txt | grep -v ^$ | wc -l)
relation_count=$(cat relation_ids.txt | grep -v ^$ | wc -l)
file_count=$(cat file_ids.txt | grep -v ^$ | wc -l)

echo "Nodes:     $node_count"
echo "Relations: $relation_count"
echo "Files:     $file_count"

jq --argjson node_count "$node_count" \
   --argjson relation_count "$relation_count" \
   --argjson file_count "$file_count" \
   '. + {nodeCount: $node_count, relationCount: $relation_count, fileCount: $file_count}' \
   summary.json | sponge summary.json
