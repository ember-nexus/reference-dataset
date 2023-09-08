# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased
### Added
- Add password hash to user `user@postToken.user.endpoint.localhost.de` in scenario `endpoint.user.postToken`. Fixes #6.

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
