import 'dart:async';

Future<String> fetchUser() => Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    print(userData);
  } catch (error) {
    print('error caught: $error');
  }
}
