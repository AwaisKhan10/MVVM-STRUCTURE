import 'package:mvvm/core/view_model/base_view_model.dart';

class SubscriptionPlansViewModel extends BaseViewModel {
  int selectedValue = 0; // isko State me rakho

  onclick(index) {
    selectedValue = index;
    notifyListeners();
  }
}
