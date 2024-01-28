import 'dart:async';

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}

void main() async {
  await usersCount();
}
