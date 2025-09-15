import 'package:mvvm/core/view_model/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  bool isSelect = true;

  onClick() {
    isSelect = !isSelect;
    notifyListeners();
  }
}
