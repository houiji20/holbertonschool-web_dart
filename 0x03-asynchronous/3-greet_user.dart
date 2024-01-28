import 'dart:async';
import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    String username = userMap['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

Future<String> loginUser() async {
  try {
    bool credentialsValid = await checkCredentials();
    print('There is a user: $credentialsValid');
    if (credentialsValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
