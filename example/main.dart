import 'package:secure_random/secure_random.dart';

void main() {
  var secureRandom = SecureRandom();

  print(secureRandom.nextString(length: 10)); // e.g. 9FCjKnM4OW

  print(secureRandom.nextString(
      length: 10, charset: '0123456789')); // e.g. d8b08cbea6

  print(secureRandom.nextString(
      length: 10, charset: 'abcdefghijklmnopqrstuvwxyz')); // e.g. iqixgbjgfx

  print(secureRandom.nextString(
      length: 10, charset: '0123456789abcdef')); // e.g. d8b08cbea6

  print(secureRandom.nextString(
      length: 10,
      charset:
          'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')); // e.g. EUfpfiFEfv

  print(secureRandom.nextString(
      length: 10,
      charset:
          'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#\$%^&*()_+`')); // e.g. sUkf1(xM3Z
}
