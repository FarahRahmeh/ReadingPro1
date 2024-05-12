class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters.';
    }

    // if (!value.contains(RegExp(r'[A-Z]'))) {
    //   return 'Password must contain at least one uppercase letter.';
    // }
    // if (!value.contains(RegExp(r'[0-9]'))) {
    //   return 'Password must contain at least one number.';
    // }
    // if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    //   return 'Password must contain at least one special character.';
    // }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    // if (value.length < 10) {
    //   return 'Phone number must be at least 10 characters.';
    // }
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number.';
    }

    return null;
  }

  static String? validateEmptyText(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }

    return null;
  }

  /// Username Validation
  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username is required.';
    }
    // Define a regular expression pattern for the username.
    const pattern = r"A[a-zA-z0-9_-]{3,20}$";
    // Create a RegExp instance from the pattern.
    final regex = RegExp(pattern);
    // Use the hasMatch method to check if the username matches the pattern.
    bool isValid = regex.hasMatch(username!);
    // Check if the username doesn't start or end with an underscore or hyphen.
    if (isValid) {
      isValid = !username.startsWith('-') &&
          !username.startsWith('-') &&
          !username.endsWith('_') &&
          !username.endsWith('-');
    }
    if (!isValid) {
      return 'Invalid Username';
    }
  }

  static String? validatePasswordConfirmation(
      String? password, String? confirmation) {
    if (confirmation == null || confirmation.isEmpty) {
      return 'Password Confirmation is required.';
    }

    if (confirmation != password) {
      return 'Password confirmation does not match the password';
    }
    return null;
  }

  static String? validateCode(String? code) {
    if (code == null || code.isEmpty) {
      return 'Please enter the confirmation code';
    }
    if (code.length < 5) {
      return 'confirmation code should be 5 digits';
    }
    // You can add more validation if needed
    return null;
  }
}
