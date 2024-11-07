import 'package:mvvm/core/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final String mvvm = "MVVM STRUCTURE STATE MANAGMENT";

  var selectDay = DateTime.now();
  var FocusDay = DateTime.now();

  OnDaySelected(selectedDay, focusedDay) {
    selectDay = selectedDay;
    FocusDay = focusedDay;
    notifyListeners();
  }

  ///
  /// For yes and no buttons logic
  ///

  bool isSelected = false;
  onCLick() {
    isSelected = !isSelected;
    notifyListeners();
  }
}
