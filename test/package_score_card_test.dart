import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('weekly version downloads', () {
    test('preserves every weekly download series from package metrics', () {
      final metrics = PackageMetrics.fromMap(_metricsPayload());
      final weekly = metrics.scorecard.weeklyVersionDownloads!;

      expect(weekly.totalWeeklyDownloads, [10, 20, 30]);
      expect(
        weekly.majorRangeWeeklyDownloads.single.versionRange,
        '>=3.0.0-0 <4.0.0',
      );
      expect(weekly.minorRangeWeeklyDownloads.single.counts, [7, 17, 27]);
      expect(weekly.patchRangeWeeklyDownloads.single.counts, [6, 16, 26]);
      expect(weekly.newestDate, DateTime.utc(2026, 8, 15));

      expect(
        metrics.scorecard.toMap()['weeklyVersionDownloads'],
        {
          'totalWeeklyDownloads': [10, 20, 30],
          'majorRangeWeeklyDownloads': [
            {
              'counts': [8, 18, 28],
              'versionRange': '>=3.0.0-0 <4.0.0',
            },
          ],
          'minorRangeWeeklyDownloads': [
            {
              'counts': [7, 17, 27],
              'versionRange': '>=3.2.0-0 <3.3.0',
            },
          ],
          'patchRangeWeeklyDownloads': [
            {
              'counts': [6, 16, 26],
              'versionRange': '>=3.2.0-0 <3.2.1',
            },
          ],
          'newestDate': '2026-08-15T00:00:00.000Z',
        },
      );
    });

    test('accepts scorecards without weekly download data', () {
      final payload = _metricsPayload();
      (payload['scorecard'] as Map<String, dynamic>).remove(
        'weeklyVersionDownloads',
      );

      expect(
        PackageMetrics.fromMap(payload).scorecard.weeklyVersionDownloads,
        isNull,
      );
    });
  });
}

Map<String, dynamic> _metricsPayload() => {
      'score': {
        'grantedPoints': 160,
        'maxPoints': 160,
        'likeCount': 69,
        'popularityScore': null,
        'downloadCount30Days': 156812,
        'tags': <String>[],
      },
      'scorecard': {
        'packageName': 'pub_api_client',
        'packageVersion': '3.2.0',
        'runtimeVersion': '2026.08.12',
        'updated': '2026-08-13T20:56:41.306172Z',
        'dartdocReport': null,
        'panaReport': null,
        'taskStatus': 'completed',
        'weeklyVersionDownloads': {
          'totalWeeklyDownloads': [10, 20, 30],
          'majorRangeWeeklyDownloads': [
            {
              'counts': [8, 18, 28],
              'versionRange': '>=3.0.0-0 <4.0.0',
            },
          ],
          'minorRangeWeeklyDownloads': [
            {
              'counts': [7, 17, 27],
              'versionRange': '>=3.2.0-0 <3.3.0',
            },
          ],
          'patchRangeWeeklyDownloads': [
            {
              'counts': [6, 16, 26],
              'versionRange': '>=3.2.0-0 <3.2.1',
            },
          ],
          'newestDate': '2026-08-15T00:00:00.000Z',
        },
      },
    };
