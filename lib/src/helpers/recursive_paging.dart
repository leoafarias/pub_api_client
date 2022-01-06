import 'package:pub_api_client/src/models/search_results_model.dart';
import 'package:pub_api_client/src/pub_api_client_base.dart';

Future<List<PackageResult>> recursivePaging(SearchResults prevResults) async {
  final packages = prevResults.packages;
  final nextPage = prevResults.next;
  if (nextPage != null) {
    final results = await PubClient().nextPage(nextPage);
    final nextResults = await recursivePaging(results);
    packages.addAll(nextResults);
  }

  return packages;
}
