String? validateMobile(String? value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  } else if (value.length > 10 || value.length < 10) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String? validateEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return "Email is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Email is in invalid format ";
  } else {
    return null;
  }
}

String? passwordValidation({String? password}) {
  String pattern =
      r'^.*(?=.{8,})((?=.*[!@#$%^&*()\-_=+{};:,<.>]){1})(?=.*\d)((?=.*[a-z]){1})((?=.*[A-Z]){1}).*$';
  RegExp regExp = RegExp(pattern);
  if (password!.isEmpty) {
    return "Password is Required";
  } else if (!regExp.hasMatch(password)) {
    return "The password must be at least 8 characters long and contain a mixture of both uppercase and lowercase letters, at least one number and one special character (e.g.,! @ # ?).";
  } else {
    return null;
  }
}

String? requireValidation({String? value, String? type}) {
  if (value!.isEmpty) {
    return "$type is required";
  }
  return null;
}
