import 'package:pub_api_client/src/models/pubspec_extensions.dart';
import 'package:pubspec/pubspec.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  test('Should be able to parse repository field', () async {
    final pubspec = await PubSpec.loadFile('test/example_pubspec.yaml');
    expect(pubspec.repository(), 'https://foo.bar/repo');
  });

  test('Should be able to parse issue tracker field', () async {
    final pubspec = await PubSpec.loadFile('test/example_pubspec.yaml');
    expect(pubspec.issueTracker(), 'https://foo.bar/issues');
  });

  test('Should be able to parse funding field', () async {
    final pubspec = await PubSpec.loadFile('test/example_pubspec.yaml');
    final sponsors = pubspec.funding();
    expect(sponsors, isA<YamlList>());
    expect(sponsors, hasLength(2));
    expect(sponsors?[0], 'https://foo.bar/sponsor1');
    expect(sponsors?[1], 'https://foo.bar/sponsor2');
  });

  test('Should be able to parse false secrets field', () async {
    final pubspec = await PubSpec.loadFile('test/example_pubspec.yaml');
    final falseSecrets = pubspec.falseSecrets();
    expect(falseSecrets, isA<YamlList>());
    expect(falseSecrets, hasLength(2));
    expect(falseSecrets?[0], '/lib/foo/bar.dart');
    expect(falseSecrets?[1], '/lib/bar/foo.dart');
  });

  test('Should be able to parse screenshots field', () async {
    final screenshots = pubspec.screenshots();

    expect(screenshots, isA<List<Screenshot>>());
    expect(screenshots, hasLength(1));

    final firstScreenShot = screenshots?[0];
    expect(firstScreenShot, isA<Screenshot>());
    expect(firstScreenShot?.description, 'foo-bar screenshot');
    expect(firstScreenShot?.path, 'screenshots/foo-bar.png');
  });

  test('Should be able to parse topics field', () async {
    final pubspec = await PubSpec.loadFile('test/example_pubspec.yaml');
    final topics = pubspec.topics();
    expect(topics, isA<YamlList>());
    expect(topics, hasLength(2));
    expect(topics?[0], 'bar');
    expect(topics?[1], 'foo');
  });

  test('Should be able to parse ignoredAdvisories field', () async {
    final pubspec = await PubSpec.loadFile('test/example_pubspec.yaml');
    final ignoredAdvisories = pubspec.ignoredAdvisories();
    expect(ignoredAdvisories, isA<YamlList>());
    expect(ignoredAdvisories, hasLength(2));
    expect(ignoredAdvisories?[0], 'foo-bar');
    expect(ignoredAdvisories?[1], 'bar-foo');
  });
}

const pubspec = PubSpec(
  unParsedYaml: {
    'repository': 'https://foo.bar/repo',
    'issue_tracker': 'https://foo.bar/issues',
    'funding': ['https://foo.bar/sponsor1', 'https://foo.bar/sponsor2'],
    'false_secrets': ['/lib/foo/bar.dart', '/lib/bar/foo.dart'],
    'topics': ['bar', 'foo'],
    'ignored_advisories': ['foo-bar', 'bar-foo'],
    'screenshots': [
      {
        'description': 'foo-bar screenshot',
        'path': 'screenshots/foo-bar.png',
      }
    ],
  },
);
