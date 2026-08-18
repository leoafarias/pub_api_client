import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

void main() {
  test('exports dependency types exposed through package pubspecs', () {
    final dependencies = <Dependency>[
      HostedDependency(),
      GitDependency(Uri.parse('https://example.com/package.git')),
      PathDependency('../package'),
      SdkDependency('flutter'),
    ];

    expect(dependencies, hasLength(4));
    expect(HostedDetails(null, Uri.parse('https://pub.example')), isNotNull);
  });
}
