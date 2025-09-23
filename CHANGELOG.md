# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased
### Changed
- Improve botanic search example, closes #59.

## 0.0.27 - 2025-09-08
### Added
- Add botanic search scenario closes [#55].

## 0.0.26 - 2024-11-07
### Changed
- Change license from AGPL 3 to MIT, closes [#52].

## 0.0.25 - 2024-10-12
### Changed
- Extended scenario `general.pagination` to support testing index endpoint pagination, closes [#49].

## 0.0.24 - 2024-03-06
### Added
- Add scenario `general.if-none-match`, closes [#44].
- Add scenario `general.if-match`, closes [#43].

## 0.0.23 - 2024-01-27
### Added
- Add scenarios `general.etag.maximum`, `general.etag.create-node`, `general.etag.create-owns-relation`,
  `general.etag.create-normal-relation`, `general.etag.update-node`, `general.etag.update-owns-relation`,
  `general.etag.update-normal-relation`, `general.etag.delete-node`, `general.etag.delete-owns-relation` and
  `general.etag.delete-normal-relation`, closes [#41].

## 0.0.22 - 2023-12-16
### Fixed
- Fix duplicate OWNS-relation between user `be5d2aa7-5ff8-4ca2-ba03-20a9c10ffdb1` and token
  `ae26e994-7511-4269-929f-01d075cc7c36` within scenario `security.multipleGroups.immediateNodeOwnership`.

## 0.0.21 - 2023-12-16
### Added
- Add scenarios `command.token.revoke.*`, closes [#36].

### Changed
- Remove trigger `pull_request` and `fork` from test CI, closes [#37].

## 0.0.20 - 2023-12-10
### Added
- Add multiple scenarios for missing feature tests, closes [#34].

## 0.0.19 - 2023-12-01

## 0.0.18 - 2023-12-01
### Added
- Add test scenario `security.tokenState`, closes [#31].

### Changed
- All tokens have a new property `state` set to the value `ACTIVE`, required by [#31].

## 0.0.17 - 2023-10-29
### Added
- Add test scenario `security.deleteToken`, closes [#28].

## 0.0.16 - 2023-10-28
### Changed
- Hotfix due to duplicate email conflict, references [#24].

## 0.0.15 - 2023-10-28
### Changed
- Hotfix due to duplicate id issue, references [#24].

## 0.0.14 - 2023-10-28
### Added
- Add test scenario `general.ownershipModel`, closes [#24].

### Changed
- Update readme.

## 0.0.13 - 2023-10-06
### Changed
- Change email TLD from .de to .dev, closes [#14].
- Replace legacy property name "test" with "scenario", closes [#20].

## 0.0.12 - 2023-09-29
### Added
- Add scenario `general.anonymousUser`, closes [#18].

## 0.0.11 - 2023-09-29
### Added
- Add test scenario `endpoint.user.changePassword`, closes [#13].
- Add `cytopia/jsonlint` to CI to verify JSON files, closes [#16].

### Changed
- Add newline to all JSON files.

## 0.0.10 - 2023-09-26
### Added
- Add test scenario `security.edgeCase.tokenWithNoOwner` and `security.edgeCase.tokenWithTwoOwners`, closes [#10].

### Fixed
- Fix test scenario `security.edgeCase.tokenWithTwoOwners`, token no longer own data element.

## 0.0.9 - 2023-09-14
### Changed
- Add token file back for test `endpoint.user.postToken`.
- **Switch license to GPL-3.0-only.**

## 0.0.8 - 2023-09-08
### Added
- Add password hash to user `user@postToken.user.endpoint.localhost.de` in scenario `endpoint.user.postToken`. Fixes [#6].

## 0.0.7 - 2023-09-03
### Added
- Add test scenario `endpoint.user.postToken` for [Ember Nexus API #49: HTTP POST /token - PostTokenController](https://github.com/ember-nexus/api/issues/49).
- Add test scenario `endpoint.user.deleteToken` for [Ember Nexus API #65: HTTP DELETE /token - DeleteTokenController](https://github.com/ember-nexus/api/issues/65).
- Add test scenario `endpoint.user.getToken` for [Ember Nexus API #72: HTTP GET /token - GetTokenController](https://github.com/ember-nexus/api/issues/72).

### Changed
- Refactor folder structure.

## 0.0.6 - 2023-07-04
### Fixed
- Resolved UUID conflict.

## 0.0.5 - 2023-07-04
### Changed
- Improved frontend demo dataset.

## 0.0.4 - 2023-07-02
### Added
- Add frontend demo dataset.

## 0.0.3 - 2023-07-01
### Added
- Add empty file folder for future features.

## 0.0.2 - 2023-06-30

## 0.0.1 - 2023-06-28
### Added
- Initial commit, extracted backup from https://github.com/ember-nexus/api .
- Change backup structure, replace numbered format with full text identifiers.
- Add pagination data set.
