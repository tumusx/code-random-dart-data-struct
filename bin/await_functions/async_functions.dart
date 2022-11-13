class AsyncsTest {
  IUserRepository userRepositoryImpl;

  Future<bool> createUser(String nameUser, int ageUser) async {
    final isResultCreateUser = userRepositoryImpl.createUser(nameUser, ageUser);
    return isResultCreateUser;
  }

  AsyncsTest(this.userRepositoryImpl);
}

Future<void> main(List<String> args) async {
  final AsyncsTest asyncsTest = AsyncsTest(UserRepositoryImpl());
  print(await asyncsTest.createUser('murillo', 15));
}

abstract class IUserRepository {
  Future<bool> createUser(String nameUser, int ageUser);
}

class UserRepositoryImpl implements IUserRepository {
  @override
  Future<bool> createUser(String nameUser, int ageUser) async {
    final resultValidateUser = await ValidateUserUtil._instance.validateUserNameAge(nameUser, ageUser);
    return Future<bool>.value(resultValidateUser);
  }
}

class ValidateUserUtil {
  static final ValidateUserUtil _instance = ValidateUserUtil._internal();

  factory ValidateUserUtil() {
    return _instance;
  }

  ValidateUserUtil._internal();

  bool validateUserNameAge(String nameUser, int ageUser) {
    if (nameUser.isEmpty) {
      return false;
    }

    if (ageUser <= 14) {
      return false;
    }

    return true;
  }
}

abstract class IAsyncsTests {
  bool createUser();
}
