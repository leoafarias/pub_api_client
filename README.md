<img src="https://github.com/leoafarias/pub_api_client/blob/main/assets/logo.png?raw=true" alt="drawing" width="320"/>

[![Pub Version](https://img.shields.io/pub/v/pub_api_client?label=version&style=flat-square)](https://pub.dev/packages/pub_api_client/changelog) [![Health](https://img.shields.io/badge/dynamic/json?color=blue&label=health&query=pub_points&url=http://www.pubscore.gq/pub-points?package=pub_api_client&style=flat-square&cacheSeconds=90000)](https://pub.dev/packages/pub_api_client/score) [![Coverage Status](https://coveralls.io/repos/github/leoafarias/pub_api_client/badge.svg?branch=main)](https://coveralls.io/github/leoafarias/pub_api_client?branch=main) [![MIT Licence](https://img.shields.io/github/license/leoafarias/pub_api_client?style=flat-square&longCache=true)](https://opensource.org/licenses/mit-license.php)

## An unofficial API client for [Pub.dev](https://www.pub.dev)

Implements all `known` endpoints available on pub.dev. If any particular endpoint is missing please [open an issue][tracker].

## Usage

A simple usage example:

```dart
import 'package:pub_api_client/pub_api_client.dart';

main() {
  final client =  PubClient();
}
```

## Get Package Info

Retrieves all available information about an specific package.

```dart
  final package =  await client.getPackage('pkg_name');
```

## Get Package Score

Returns the following score information about a package.

- Pub Points
- Popularity
- Likes

```dart
  final score =  await client.getScore('pkg_name');
```

## Get Package Versions

The method `getPackage` also returns the versions. However if all you need is versions use this method since it's lighter.

```dart
  final package =  await client.getVersions('pkg_name');
```

## Search Packages

Allows you to search for packages on pub.dev. Will return the packages that match the query.

```dart
final results =  await client.search('query');
// Returns the packages that match the query
print(results.packages)
```

### Paging Search Results

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

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/leoafarias/pub_api_client/issues
