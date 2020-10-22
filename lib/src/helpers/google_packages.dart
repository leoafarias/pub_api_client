import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_api_client/src/helpers/google_packages_list.dart';

const _publishers = [
  'flutter.dev',
  'dart.dev',
  'material.io',
  'firebase.google.com'
];

final _googleDependencies = {for (var v in googlePackagesList) v: true};

bool isGooglePubPackage(String packageName) {
  return _googleDependencies[packageName] == true;
}

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
