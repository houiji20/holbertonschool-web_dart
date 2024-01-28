import '0-util.dart';
Future<void> usersCount() async {
  int userCount = await fetchUsersCount();
  print('$userCount');
