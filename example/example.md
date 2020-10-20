```dart
import 'package:pub_api_client/pub_api_client.dart';

void main() async {
  final client = PubClient();
  final packageInfo = await client.getPackage('fvm');
  print('Package Info: $packageInfo');
}

```
