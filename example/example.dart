import 'package:pub_api_client/pub_api_client.dart';

void main() async {
  final client = PubClient();
  final packageScore = await client.packageScore('fvm');
  print('Package Score: $packageScore');
}
