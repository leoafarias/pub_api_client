import '../models/search_results_model.dart';
import '../pub_api_client_base.dart';

Future<List<PackageResult>> recursivePaging(
    PubClient client, SearchResults prevResults) async {
  final List<PackageResult> lstPackages = [];
  final packages = prevResults.packages;
  final nextPage = prevResults.next;
  lstPackages.addAll(packages);
  if (nextPage != null) {
    final results = await client.nextPage(nextPage);
    final nextResults = await recursivePaging(client, results);
    lstPackages.addAll(nextResults);
  }

  return lstPackages;
}
