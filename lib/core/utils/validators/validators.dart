abstract class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{6,}$',
    );
    if (!passwordRegex.hasMatch(value)) {
      return 'Password must include:\n• 1 uppercase\n• 1 lowercase\n• 1 number\n• 1 special character (!@#\$&*~)';
    }
    return null;
  }

  static String? validateRePassword(String? value, String? checkValue) {
    if (value == null || value.isEmpty) {
      return 'Re Password cannot be empty';
    }
    if (value != checkValue) {
      return 'Passwords must match';
    }
    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }
    if (value.length < 4) {
      return 'Username must be at least 4 characters';
    }
    return null;
  }
}
