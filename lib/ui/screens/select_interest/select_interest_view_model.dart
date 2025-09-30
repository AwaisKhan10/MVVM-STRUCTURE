import 'package:flutter/material.dart';
import 'package:mvvm/core/view_model/base_view_model.dart';

class SelectInterestViewModel extends BaseViewModel {
  final searchController = TextEditingController();

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

  String _searchQuery = "";

  void setSearchQuery(String value) {
    _searchQuery = value.toLowerCase();
    notifyListeners();
  }

  // Filtered list according to search
  List<String> get filteredInterests {
    if (_searchQuery.isEmpty) return interests;
    return interests
        .where((e) => e.toLowerCase().contains(_searchQuery))
        .toList();
  }

  void onClick(String interest) {
    if (selectedInterests.contains(interest)) {
      selectedInterests.remove(interest);
      interests.add(interest);
    } else {
      if (selectedInterests.length < 5) {
        selectedInterests.add(interest);
        interests.remove(interest);
      }
    }
    notifyListeners();
  }

  bool isSelected(String interest) {
    return selectedInterests.contains(interest);
  }
}
