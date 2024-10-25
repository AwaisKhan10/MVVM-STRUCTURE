import 'package:mvvm/core/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final String mvvm = "MVVM STRUCTURE STATE MANAGMENT";
  bool isSelected = false;

  onCLick() {
    isSelected = !isSelected;
    notifyListeners();
  }
}
