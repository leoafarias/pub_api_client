import 'package:pub_api_client/src/models/search_results_model.dart';
import 'package:pub_api_client/src/pub_api_client_base.dart';

Future<List<PackageResult>> recursivePaging(
    PubClient client, SearchResults prevResults) async {
  final packages = prevResults.packages;
  final nextPage = prevResults.next;
  if (nextPage != null) {
    final results = await client.nextPage(nextPage);
    final nextResults = await recursivePaging(client, results);
    packages.addAll(nextResults);
  }

  return packages;
}
