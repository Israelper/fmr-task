class Validation {
  static const String phoneNumberPattern = '^\\+[1-9]\\d{1,14}\$';

  static String? phone(String? input) {
    if (input == null || input.isEmpty) {
      return null;
    }
    if (input.isPhoneValidated == false) {
      return 'Invalid phone number';
    }
    return null;
  }
}

extension ValidationExtension on String {
  bool get isPhoneValidated {
    final val = this;
    return val.length == 10;
  }
}
