<img src="https://github.com/leoafarias/pub_api_client/blob/main/assets/logo.png?raw=true" alt="drawing" width="320"/>

[![Pub Version](https://img.shields.io/pub/v/pub_api_client?label=version&style=flat-square)](https://pub.dev/packages/pub_api_client/changelog) [![Health](https://img.shields.io/badge/dynamic/json?color=blue&label=health&query=pub_points&url=http://www.pubscore.gq/pub-points?package=pub_api_client&style=flat-square)](https://pub.dev/packages/pub_api_client/score) [![Coverage Status](https://coveralls.io/repos/github/leoafarias/pub_api_client/badge.svg?branch=main)](https://coveralls.io/github/leoafarias/pub_api_client?branch=main) [![MIT Licence](https://img.shields.io/github/license/leoafarias/pub_api_client?style=flat-square&longCache=true)](https://opensource.org/licenses/mit-license.php)

## An unofficial API client for [Pub.dev](https://www.pub.dev)

Aims to be the most complete and stable pub.dev API client. If any particular endpoint is missing please [open an issue][tracker].

## Table of contents

- [Usage](#usage)
- [API](#api)
  - [Packages](#packages)
    - [Details](#get-package-info)
    - [Score](#get-package-score)
    - [Metrics](#get-package-metrics)
    - [Versions](#get-package-versions)
    - [Version Info](#get-package-version-info)
    - [Publisher](#get-package-publisher)
    - [Options](#get-package-options)
    - [Documentation](#get-documentation)
  - [Search Packages](#search-packages)
    - [Paging Search Results](#paging-search-results)
- [Utilities](#utilities)
  - [Update Notification](#update-notification)
    - [Check Update Printer](#check-update-printer)
    - [Custom Update Notification](#custom-update-notification)

## Usage

A simple usage example:

```dart
import 'package:pub_api_client/pub_api_client.dart';

main() {
  final client =  PubClient();
}
```

## API

### Packages

#### Get Package Info

Retrieves all available information about an specific package.

```dart
  final package =  await client.packageInfo('pkg_name');
```

#### Get Package Score

Returns the following score information about a package.

- Pub Points
- Popularity
- Likes

```dart
  final score =  await client.packageScore('pkg_name');
```

#### Get Package Metrics

The method 'packageMetrics' returns the package 'score' together with a 'scorecard'

```dart
  final metrics =  await client.packageMetrics('pkg_name');
```

#### Get Package Versions

The method 'packageVersions' also returns the versions. However if all you need is versions use this method since it's lighter.

```dart
  final versions =  await client.packageVersions('pkg_name');
```

#### Get Package Version Info

The method `packageVersionInfo` returns information about a version of a specific package.

```dart
  final version =  await client.packageVersionInfo('pkg_name', 'version');
```

#### Get Package Publisher

The method `packagePublisher` returns the publisherId of a specific package.

```dart
  final publisher =  await client.packagePublisher('pkg_name');
  // publisher.publisherId
```

#### Get Package Options

The method `packageOptions` returns options of a package.

```dart
  final options =  await client.packageOptions('pkg_name');
```

#### Get Documentation

The method `documentation` returns all versions and their respective documentation status.

```dart
  final documentation =  await client.documentation('pkg_name');
```

### Search Packages

Allows you to search for packages on pub.dev. Will return the packages that match the query.

```dart
final results =  await client.search('query');
// Returns the packages that match the query
print(results.packages)
```

#### Paging Search Results

You are able to page search results.

```dart
final results =  await client.search('query');
final nextResults = await results.nextPage();

print(nextResults.packages)
```

If you want to retrieve a specific result page you can call the `page` parameter directly.

```dart
final results =  await client.search('query',page:2);
print(results.packages)
```

## Utilities

### Update Notification

This package has a helper method if you want to notify users of your CLI of a newer version. In order to check for update you have to provide `currentVersion`.

#### Check Update Printer

This is a helper that automatically prints a notification on console.

```dart
import 'package:pub_api_client/pub_api_client.dart';

await checkUpdatePrinter('pkg_name', currentVersion:'1.0.0');

// Will print out the following as an example
# 'Update Available for pkg_name 1.0.0 → 1.0.1';
# 'Changelog: https://pub.dev/packages/pkg_name/changelog';
```

#### Custom Update Notification

```dart
final latest =  await client.checkLatest('pkg_name', currentVersion:'current_version');
// Returns the packages that match the query
print(latest.needUpdate) // bool if package needs update
print(latest.packageInfo) // Returns information about the package
print(latest.latestVersion) // Returns the latest version of the package.
```

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/leoafarias/pub_api_client/issues

```

```
