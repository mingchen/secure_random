library secure_random;

import 'dart:math';

/// Secure random generator for string / number.
///
/// This class use cryptographically secure source of random numbers.
///
class SecureRandom {
  Random _random;
  static const String _defaultCharset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  /// Constructor
  SecureRandom() {
    _random = Random.secure();
  }

  /// Generate a strong random string.
  ///
  /// @param length   The length of target random string.
  /// @param charset  Characters used in random string.
  ///                 The default `charset` is 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
  ///
  /// @returns Random string with a fixed length.
  ///
  String nextString({int length, String charset = _defaultCharset}) {
    String ret = '';

    for (var i = 0; i < length; ++i) {
      int random = _random.nextInt(charset.length);
      ret += charset[random];
    }

    return ret;
  }

  /// Generate a strong random integer.
  int nextInt({int max}) {
    return _random.nextInt(max);
  }
}
