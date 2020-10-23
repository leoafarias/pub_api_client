import '../models/search_results_model.dart';
import '../pub_api_client_base.dart';
import 'google_packages_list.dart';

/// List of Google publishers on pub.dev
const _publishers = [
  'flutter.dev',
  'dart.dev',
  'material.io',
  'firebase.google.com'
];

final _googleDependencies = {for (var v in googlePackagesList) v: true};

/// Check is [package] is from Google
bool isGooglePubPackage(String package) => _googleDependencies[package] == true;

/// Retrieves all Google packages from pub.dev
/// Mostly used as an internal tool to generate
/// google_packages_list.dart
/// You should probably use that instead
Future<List<String>> getGooglePackages() async {
  final futures = <Future<List<PackageResult>>>[];
  for (var publisher in _publishers) {
    futures.add(getPublisherPackages(publisher));
  }
  final results = await Future.wait(futures);
  final flatResults = results.expand((i) => i).toList();
  return flatResults.map((e) => e.package).toList();
}

Future<List<PackageResult>> getPublisherPackages(String publisherName) async {
  final results = await PubClient().search('', publisher: publisherName);
  return _recursivePaging(results);
}

Future<List<PackageResult>> _recursivePaging(SearchResults prevResults) async {
  final packages = prevResults.packages ?? [];
  if (prevResults.next != null) {
    final results = await prevResults.nextResults();
    final nextResults = await _recursivePaging(results);
    packages.addAll(nextResults);
  }
  return packages;
}
