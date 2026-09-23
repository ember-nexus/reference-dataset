#!/bin/bash

# Lints and format-checks all JSON files, using the jsonlint binary of the cytopia/jsonlint image.
#
# The image's own entrypoint checks the files one at a time, which is slow for thousands of files. This script instead
# runs the same check (validate, then diff against jsonlint's formatted output) for one file per process, with as many
# processes in parallel as there are CPU cores. The entrypoint's check is not reused directly, as it writes to
# /tmp/<basename>, which parallel runs of files with the same name (e.g. data.json) would overwrite for each other.
#
# Usage: ./lint-json.sh

set -euo pipefail

INDENTATION='  '

lint_file() {
    local file="$1"
    local formatted
    formatted=$(mktemp)

    if ! jsonlint -c -t "$INDENTATION" "$file" > "$formatted"; then
        echo "Invalid JSON: $file"
        rm -f "$formatted"
        return 1
    fi

    if ! diff "$file" "$formatted"; then
        echo "Wrong formatting: $file"
        rm -f "$formatted"
        return 1
    fi

    rm -f "$formatted"
}

case "${1:-}" in
    --file)
        lint_file "$2"
        ;;
    --in-container)
        # xargs exits with a non-zero status if any of the files failed
        find . -name '*.json' -type f -not -path './.git/*' -print0 \
            | xargs -0 -n 1 -P "$(nproc)" bash ./lint-json.sh --file
        echo "All JSON files are valid and correctly formatted."
        ;;
    *)
        docker run --rm -v "$(pwd)":/data -w /data --entrypoint bash cytopia/jsonlint ./lint-json.sh --in-container
        ;;
esac
