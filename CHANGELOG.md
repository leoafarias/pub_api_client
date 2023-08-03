## 2.5.0

- Set the minimum Dart SDK version to `3.0.0`.
  - sdk: ">=3.0.0 <4.0.0"

- Update dependencies:
  - collection: ^1.17.2
  - http: ^1.1.0
  - oauth2: ^2.0.2
  - path: ^1.8.3
  - build_runner: ^2.4.6
  - lints: ^2.1.1
  - test: ^1.24.4

- Fix: `analysis_options.yaml`
  - Was referencing `pedantic` but should reference `lints`.
- Minor lint fix `pub_api_client_base.dart`.

## 2.4.0

- Add the ability to search with any tags [32](https://github.com/fluttertools/pub_api_client/pull/32) thanks @Rexios80

## 2.3.0
- Updated dependencies
- Removed freezed

## 2.2.2
- chore: Updated dependencies
- Updated min SDK Version to 2.17

## 2.2.1

Thank you [@Rexios80](https://github.com/Rexios80) for all the great contributions

- chore: Updated dependencies
- fix: Recursive paging shares client
- added: More tests

## 2.2.0

- Fixed `Client` interace for custom HTTP Client by @Rexios80 [#17](https://github.com/leoafarias/pub_api_client/pull/17)
- Added Flutter Favorites, Google Packages and Publisher Package request helpers.

## 2.1.1

- Added `close` method to PubClient

## 2.1.0

### Fixed

- Exposed SearchOrder for sorting

## 2.0.7

### Added

- Ability to sort search results.

## 2.0.6

### Changed

- PackageScore nullable fields. Package metrics does not return fields when package is being processed. [#10](https://github.com/leoafarias/pub_api_client/issues/10)

## 2.0.5

### Changed

- PublisherId is now a nullable string

## 2.0.4

### Added

- Better exception messaging

## 2.0.3

### Added

- Support for retrieve pub credentials on windows

## 2.0.2

### Added

- Ability to list liked packages
- Like and unlike a package

## 2.0.1

### Added

- Ability to get all package names for completion functionality

### Changed

- Fetching Google packages calls hosted static file

### Removed

- Check latest update API
- Deprecated packages to keep smaller dependency tree

## 2.0.0

### Changed

- Deprecated checkUpdatePrinter
- Null safety

## 1.0.9

### Changed

- Ability to pass custom http Client as param.
- Changed latest version to display stable version only

## 1.0.8

### Changed

- Added search filter for `publisher` or for `dependency`
- Added Google packages helpers

## 1.0.7

### Changed

- Added package publisher
- Added package options
- Added package version info
- Added documentation
- Exposed models

## 1.0.5

### Changed

- Better pubspec parsing

## 1.0.4

### Changed

- Added check for package update
- Added console printer for package update

## 1.0.3

### Changed

- Added user-agent to requests

## 1.0.2

### Changed

- Further improvements

## 1.0.1

### Changed

- Test improvements and API clean up

## 1.0.0

### Changed

- Initial version

[Unreleased]:
[2.0.1]:
