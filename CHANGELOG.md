## 3.1.0

* Adds topic tag by @Rexios80 in [#53](https://github.com/leoafarias/pub_api_client/pull/53)
* Make granted/max points nullable again by @Rexios80 in [#56](https://github.com/leoafarias/pub_api_client/pull/56)
* Add support for download counts by @Rexios80 in [#58](https://github.com/leoafarias/pub_api_client/pull/58)
* Better recursive paging by @Rexios80 in [#54](https://github.com/leoafarias/pub_api_client/pull/54)
* Add package names endpoint by @Rexios80 in [#55](https://github.com/leoafarias/pub_api_client/pull/55)

## 3.0.0

* Replaced deprecated `pubspec` to `pubspec_parse` package
* Extensions for Pubspec, repository, issueTracker, screenshots, and issueTracker are now properties and not methods, for consistency with `pubspec_parse`

## 2.7.1

* Fix result data class schema [#50](https://github.com/leoafarias/pub_api_client/pull/50)

## 2.7.0

* Updated schema by @leoafarias
* Added missing field to pubspec by @jxstxn1

## 2.6.0

* Feature: Added topics parameters to search method
* Chore: Improved models' equality and toString methods
* Fix: Hanging on close [#40](https://github.com/leoafarias/pub_api_client/pull/40)

## 2.5.0

* Feature: Ability to customize user-agent
* Chore: Set the minimum Dart SDK version to `3.0.0` by @gmpassos
* Chore: Updated dependencies by @gmpassos
* Chore: Switched analysis to use `lints` by @gmpassos
* Chore: Pub.dev API no longer returns latestStableVersion for documentation endpoint
* Fix: Handle invalid JSON on exception

## 2.4.0

* Added the ability to search with any tags [#32](https://github.com/fluttertools/pub_api_client/pull/32) thanks @Rexios80

## 2.3.0

* Updated dependencies
* Removed freezed

## 2.2.2

* Chore: Updated dependencies
* Updated min SDK version to 2.17

## 2.2.1

Thank you [@Rexios80](https://github.com/Rexios80) for all the great contributions

* Chore: Updated dependencies
* Fix: Recursive paging shares client
* Added: More tests

## 2.2.0

* Fixed `Client` interface for custom HTTP Client by @Rexios80 [#17](https://github.com/leoafarias/pub_api_client/pull/17)
* Added Flutter Favorites, Google Packages, and Publisher Package request helpers.

## 2.1.1

* Added `close` method to PubClient

## 2.1.0

### Fixed

* Exposed SearchOrder for sorting

## 2.0.7

### Added

* Ability to sort search results

## 2.0.6

### Changed

* PackageScore nullable fields. Package metrics do not return fields when the package is being processed. [#10](https://github.com/leoafarias/pub_api_client/issues/10)

## 2.0.5

### Changed

* PublisherId is now a nullable string

## 2.0.4

### Added

* Better exception messaging

## 2.0.3

### Added

* Support for retrieving pub credentials on Windows

## 2.0.2

### Added

* Ability to list liked packages
* Like and unlike a package

## 2.0.1

### Added

* Ability to get all package names for completion functionality

### Changed

* Fetching Google packages calls hosted static file

### Removed

* Check latest update API
* Deprecated packages to keep a smaller dependency tree

## 2.0.0

### Changed

* Deprecated checkUpdatePrinter
* Null safety

## 1.0.9

### Changed

* Ability to pass custom HTTP Client as a parameter
* Changed latest version to display stable version only

## 1.0.8

### Changed

* Added search filter for `publisher` or for `dependency`
* Added Google packages helpers

## 1.0.7

### Changed

* Added package publisher
* Added package options
* Added package version info
* Added documentation
* Exposed models

## 1.0.5

### Changed

* Better pubspec parsing

## 1.0.4

### Changed

* Added check for package update
* Added console printer for package update

## 1.0.3

### Changed

* Added user-agent to requests

## 1.0.2

### Changed

* Further improvements

## 1.0.1

### Changed

* Test improvements and API cleanup

## 1.0.0

### Changed

* Initial version