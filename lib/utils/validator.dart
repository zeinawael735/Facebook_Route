import 'app_keys.dart';

abstract class Validator {
  static String? validateEmail(String? val) {
    final RegExp emailRegex = RegExp(AppKeys.emailRegex);
    if (val == null || val.trim().isEmpty) {
      return 'Field cannot be empty';
    } else if (!emailRegex.hasMatch(val)&&!RegExp(r'^01[0125]\d{8}$').hasMatch(val.trim())) {
      return 'Enter a valid email or phone number';
    }
    else {
      return null;
    }
  }

  static String? validatePassword(String? val) {
    final RegExp passwordRegex = RegExp(AppKeys.passwordRegex);
    if (val == null || val.isEmpty) {
      return 'Password cannot be empty';
    } else if (!passwordRegex.hasMatch(val)) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }}