# secure_random

[![Build Status](https://travis-ci.org/mingchen/secure_random.svg?branch=master)](https://travis-ci.org/mingchen/secure_random)

Secure random generator.

This class use cryptographically secure source of random numbers.

## Usage

```dart
import 'package:secure_random/secure_random.dart';
    
var secureRandom = SecureRandom();
String s = secureRandom.nextString(length: 10);     // e.g. b4nc1evnip
```

You can also specific `charset` you want to use for random string.

```dart
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
```

# Test

Run test:

    pub run test

## License

MIT. see [LICENSE](LICENSE).
