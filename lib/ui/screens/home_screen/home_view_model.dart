import 'package:mvvm/core/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  final String mvvm = "MVVM STRUCTURE STATE MANAGMENT";
  bool isSelected = false;

  var selectDay = DateTime.now();
  var FocusDay = DateTime.now();
  onCLick() {
    isSelected = !isSelected;
    notifyListeners();
  }

  OnDaySelected(selectedDay, focusedDay) {
    selectDay = selectedDay;
    FocusDay = focusedDay;
    notifyListeners();
  }
}
