class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (!_containsUppercase() || !_containsLowercase() || !_containsNumbers()) {
      return false;
    }

    return true;
  }

  bool _containsUppercase() {
    return _password.contains(RegExp(r'[A-Z]'));
  }

  bool _containsLowercase() {
    return _password.contains(RegExp(r'[a-z]'));
  }

  bool _containsNumbers() {
    return _password.contains(RegExp(r'[0-9]'));
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
