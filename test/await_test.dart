import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

import '../bin/await_functions/async_functions.dart';

Future<void> main() async {
  IUserRepository userRepositoryMock = UserRepositoryImpl();
  final isResultCreateUser = await userRepositoryMock.createUser('murillo', 16);

  test('create user, return true', () {
    expect(isResultCreateUser, true);
  });

  test('name empty, return false', () {
    expect(ValidateUserUtil().validateUserNameAge('', 15), false);
  });

  test('age <=14, return false', () {
    expect(ValidateUserUtil().validateUserNameAge('murillo', 14), false);
  });
}
