// ignore_for_file: unused_field

import 'package:get/get.dart';
import 'package:mvvm/core/enums/view_state.dart';
import 'package:mvvm/core/model/app_user.dart';
import 'package:mvvm/core/services/auth_services.dart';
import 'package:mvvm/core/view_model/base_view_model.dart';
import 'package:mvvm/ui/screens/auth/login/login_screen.dart';

class SignupViewModel extends BaseViewModel {
  bool isSelect = true;

  onClick() {
    isSelect = !isSelect;
    notifyListeners();
  }

  bool isShowPassword = true;
  AppUser appUser = AppUser();
  // final _authService = locator<AuthService>();
  // final _dbService = locator<DatabaseService>();

  AuthService authService = AuthService();

  showPassword() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  register() async {
    if ((appUser.email ?? '').isEmpty || (appUser.password ?? '').isEmpty) {
      Get.snackbar("Error", "Please fill all required fields");
      return;
    }

    if (!(appUser.email ?? '').contains('@')) {
      Get.snackbar("Error", "Please enter a valid email");
      return;
    }

    if ((appUser.password ?? '').length < 6) {
      Get.snackbar("Error", "Password should be at least 6 characters");
      return;
    }

    setState(ViewState.busy);
    try {
      final result = await authService.registerUser(appUser);
      print("@SignupViewModel register result=> ${result.toString()}");

      if (result != null && result.user != null) {
        Get.snackbar("Success", "Your account was registered successfully");
        Get.to(() => LoginScreen());
      } else {
        Get.snackbar("Error", "Registration failed. Please try again.");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      setState(ViewState.idle);
    }
  }
}
