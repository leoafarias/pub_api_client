<img src="https://github.com/leoafarias/pub_api_client/blob/main/assets/logo.png?raw=true" alt="drawing" width="320"/>

[![Pub Version](https://img.shields.io/pub/v/pub_api_client?label=version&style=flat-square)](https://pub.dev/packages/pub_api_client/changelog) ![Pub Likes](https://img.shields.io/pub/likes/pub_api_client?label=Pub%20Likes&style=fflat-squaree)
![Pub Points](https://img.shields.io/pub/points/pub_api_client?label=Pub%20Points&style=fflat-squaree) [![Coverage Status](https://coveralls.io/repos/github/leoafarias/pub_api_client/badge.svg?branch=main)](https://coveralls.io/github/leoafarias/pub_api_client?branch=main) [![MIT Licence](https://img.shields.io/github/license/leoafarias/pub_api_client?style=flat-square&longCache=true)](https://opensource.org/licenses/mit-license.php)

## An unofficial API client for [Pub.dev](https://www.pub.dev)

Aims to be the most complete and stable pub.dev API client. If any particular endpoint is missing please [open an issue](https://github.com/leoafarias/pub_api_client/issues).

## Table of contents

- [Usage](#usage)
- [API](#api)
  - [Packages](#packages)
    - [Details](#get-package-info)
    - [Score](#get-package-score)
    - [Metrics](#get-package-metrics)
    - [Versions](#get-package-versions)
    - [Version Info](#get-package-version-info)
    - [Version Score](#get-package-version-score)
    - [Version Options](#get-package-version-options)
    - [Publisher](#get-package-publisher)
    - [Likes](#get-package-likes)
    - [Options](#get-package-options)
    - [Documentation](#get-documentation)
    - [Security Advisories](#get-security-advisories)
  - [Publishers](#publishers)
    - [Publisher Info](#get-publisher-info)
  - [Search Packages](#search-packages)
    - [Sorting search results](#sorting-search-results)
    - [Paging Search Results](#paging-search-results)
  - [Like Packages](#like-packages)
  - [Completion Data](#completion-data)
- [Utilities](#utilities)
  - [Flutter Favorites](#flutter-favorites)
  - [Google Packages](#google-packages)
  - [Publisher Packages](#publisher-packages)
  - [All Packages](#all-packages)

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

Package pubspec dependencies retain their typed source metadata. The public
library exports `HostedDependency`, `GitDependency`, `PathDependency`, and
`SdkDependency` so consumers can inspect constraints, URLs, refs, subpaths, and
SDK names without importing an implementation dependency separately.

#### Get Package Score

Returns the following score information about a package.

- Pub Points (`grantedPoints` / `maxPoints`)
- Likes (`likeCount`)
- 30-day downloads (`downloadCount30Days`)
- Tags

```dart
final score =  await client.packageScore('pkg_name');
```

> `popularityScore` is always `null` — pub.dev retired the popularity score.
> Use `downloadCount30Days` instead.

#### Get Package Metrics

The method 'packageMetrics' returns the package 'score' together with a 'scorecard'

```dart
final metrics = await client.packageMetrics('pkg_name');
final weekly = metrics?.scorecard.weeklyVersionDownloads;
if (weekly != null && weekly.totalWeeklyDownloads.isNotEmpty) {
  print('Latest weekly downloads: ${weekly.totalWeeklyDownloads.last}');
}
```

When supplied by the server, the scorecard includes total weekly downloads and
major, minor, and patch version-range histories.

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

#### Get Package Version Score

The method `packageVersionScore` returns the score of a single version.

```dart
final score =  await client.packageVersionScore('pkg_name', 'version');
```

#### Get Package Version Options

The method `packageVersionOptions` tells whether a specific version has been
retracted.

```dart
final options =  await client.packageVersionOptions('pkg_name', 'version');
// options.isRetracted
```

#### Get Package Publisher

The method `packagePublisher` returns the publisherId of a specific package.

```dart
final publisher =  await client.packagePublisher('pkg_name');
// publisher.publisherId
```

#### Get Package Likes

The method `packageLikes` returns the public like count of a package. Unlike
the [like endpoints](#like-packages) this does not require authentication.

```dart
final likes =  await client.packageLikes('pkg_name');
// likes.likes
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

#### Get Security Advisories

The method `packageAdvisories` returns the security advisories affecting a
package, in [OSV format](https://ossf.github.io/osv-schema/). Returns `null`
when the server does not implement the endpoint.

```dart
final advisories =  await client.packageAdvisories('pkg_name');
// advisories?.advisories.first.pubDisplayUrl
```

### Publishers

#### Get Publisher Info

The method `publisherInfo` returns the public profile of a publisher.

```dart
final publisher =  await client.publisherInfo('dart.dev');
// publisher.description, publisher.websiteUrl, publisher.contactEmail
```

### Like Packages

All requests for likes require pub.dev authentication.

#### List liked packages

Displays list of of packages you have liked. Returns list of `packageLikes`

```dart
final likes =  await client.listPackageLikes();
```

#### Package Like Status

Returns like status of a package.

```dart
final like =  await client.likePackageStatus();
```

#### Like a Package

Likes a package. The method returns `packageLike` payload

```dart
final like =  await client.likePackage('pkg_name');
```

#### Unlike a Package

Unlikes a package. The method returns `packageLike` payload

```dart
final like =  await client.unlikePackage('pkg_name');
```

### Search Packages

Search for packages on pub.dev. Will return the packages that match the query. You can filter the search with tags.

```dart
final results =  await client.search(
  'query',
  tags: [
    PackageTag.publisher('publisher_id'),
    PackageTag.dependency('dependency_name'),
    'another:tag',
  ],
  topics:['topic_1', 'topic_2'],
);
// Returns the packages that match the query
print(results.packages)
```

#### Sorting search results

You are able to sort search results by the following:

##### Top

Search score should be a weighted value of [text], [popularity], [points] and [like], ordered decreasing.

##### Text

Search score should depend only on text match similarity, ordered decreasing.

##### Created

Search order should be in decreasing last package creation time.

##### Updated

Search order should be in decreasing last package updated time.

##### Downloads

Search order should be in decreasing download count.

##### Like

Search order should be in decreasing like count.

##### Points

Search order should be in decreasing pub points.

##### Trending

Search order should be in decreasing trend score.

```dart
final results =  await client.search('query', sort: SearchOrder.updated);

print(results.packages)
```

> `SearchOrder.popularity` is deprecated. pub.dev no longer accepts it and
> silently serves those requests as `SearchOrder.top`. Use
> `SearchOrder.downloads`.

#### Paging Search Results

You are able to page search results.

```dart
final results =  await client.search('query');
final nextPage = results.next;
if (nextPage != null) {
  final nextResults = await client.nextPage(nextPage);
}

print(nextResults.packages)
```

If you want to retrieve a specific result page you can call the `page` parameter directly.

```dart
final results =  await client.search('query',page:2);
print(results.packages)
```

> pub.dev stops returning a `next` link after page 10, so paging through a
> search yields at most 100 packages.

### Completion Data

#### Package names

`packageNameCompletion` returns the top package names on pub.dev, and
`packageNames` returns every package name (paged for you).

```dart
final top = await client.packageNameCompletion();
final all = await client.packageNames();
```

#### Topics

`topicNameCompletion` returns every topic mapped to the number of packages
using it.

```dart
final topics = await client.topicNameCompletion();
// {'flutter': 1234, 'http': 567, ...}
```

## Utilities

### Flutter Favorites

Returns all Flutter favorites on pub.dev

```dart
final results = await client.fetchFlutterFavorites();
```

### Google Packages

Returns official Google packages across the known Google publishers.

```dart
final results = await client.fetchGooglePackages();
```

### Publisher Packages

Returns all packages for a specific publisher

```dart

final results = await client.fetchPublisherPackages();
```

### All Packages

Returns all packages that match a given query

```dart
final results = await fetchAllPackages('', tags: [PackageTag.publisher('leoafarias.com')])
```

> These three helpers page through search, which pub.dev caps at 10 pages, so
> each returns at most 100 packages per query/publisher.
