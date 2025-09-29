import 'package:mvvm/core/view_model/base_view_model.dart';

class SelectInterestViewModel extends BaseViewModel {
  List<String> interests = [
    "Purchasing a Home",
    "Renting a Property",
    "Investing in Real Estate",
    "Learning About Mortgages",
    "Interior Design",
    "Property Management",
    "awais",
  ];

  List<String> selectedInterests = [];

  void onClick(int index) {
    String interest = interests[index];

    if (selectedInterests.contains(interest)) {
      // remove if already selected
      selectedInterests.remove(interest);
    } else {
      // add new selection at the beginning
      selectedInterests.insert(0, interest);
    }
    notifyListeners();
  }

  bool isSelected(String interest) {
    return selectedInterests.contains(interest);
  }

  // merged list = selected first + remaining
  List<String> get orderedInterests {
    final remaining = interests.where((e) => !selectedInterests.contains(e));
    return [...selectedInterests, ...remaining];
  }
}
