import 'package:firebase_auth/firebase_auth.dart';
import 'package:mvvm/core/model/app_user.dart';
import 'package:mvvm/core/services/database_services.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  AppUser appUser = AppUser();
  DatabaseServices db = DatabaseServices();

  registerUser(AppUser appUser) async {
    final credentials = await auth.createUserWithEmailAndPassword(
      email: appUser.email ?? "",
      password: appUser.password ?? "",
    );
    appUser.id = credentials.user!.uid;
    this.appUser = appUser;
    await db.registerAppUser(appUser);
    return credentials;
  }
}
