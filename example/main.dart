import 'package:secure_random/secure_random.dart';

void main() {
  var secureRandom = SecureRandom();
  String s = secureRandom.nextString(length: 16);

  print(s);
}
