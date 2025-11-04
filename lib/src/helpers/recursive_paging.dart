import '../models/search_results_model.dart';

Future<List<T>> recursivePaging<T>(
  PaginatedResults<T> prevResults,
  Future<PaginatedResults<T>> Function(String url) getNext,
) async {
  final results = prevResults.results;
  final nextPage = prevResults.next;
  if (nextPage == null) {
    return results;
  }
  final next = await getNext(nextPage);
  return results + await recursivePaging(next, getNext);
}
