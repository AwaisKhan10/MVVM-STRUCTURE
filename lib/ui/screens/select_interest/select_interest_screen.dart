import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:mvvm/core/constant/auth_field_decoration.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/custom_button.dart';
import 'package:mvvm/ui/custom_widget/custom_interests_button.dart';
import 'package:mvvm/ui/screens/home_screen/home_screen.dart';
import 'package:mvvm/ui/screens/select_interest/select_interest_view_model.dart';
import 'package:provider/provider.dart';

class SelectInterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectInterestViewModel(),
      child: Consumer<SelectInterestViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "$staticAssets/app_logo.png",
                  scale: 6,
                ),
                20.verticalSpace,
                Text(
                  "Select Your Interests",
                  style: style24,
                ),
                Text(
                  "Select your top 5 Interests to Start your Savo journey",
                  style: style16.copyWith(fontSize: 14, color: greyColor),
                ),
                30.verticalSpace,
                TextFormField(
                  onChanged: (value) =>
                      model.setSearchQuery(value), // 👈 filter trigger
                  style: style16,
                  controller: model.searchController,
                  decoration: searchFieldDecoration.copyWith(
                      hintText: "Search",
                      prefixIcon: const Icon(
                        Icons.search,
                        color: greyColor,
                      )),
                ),
                30.verticalSpace,
                Wrap(
                  children: List.generate(
                    model.selectedInterests.length,
                    (index) => CustomInterestButton(
                      text: " ${model.selectedInterests[index]}", // number wise
                      index: index,
                      onTap: () {
                        model.onClick(
                            model.selectedInterests[index]); // deselect
                      },
                      isSelected: true, // upar wale hamesha selected
                    ),
                  ),
                ),
                30.verticalSpace,
                Text(
                  "Select Interests",
                  style: style16,
                ),
                30.verticalSpace,
                Wrap(
                  children: List.generate(
                    model.filteredInterests.length,
                    (index) => CustomInterestButton(
                      text: model.filteredInterests[index],
                      onTap: () {
                        model.onClick(model.interests[index]); // select
                      },
                      isSelected: false, // neeche wale default not selected
                    ),
                  ),
                ),
                30.verticalSpace,
                CustomButton(
                  text: "Continue",
                  onTap: () {
                    Get.offAll(MyHomePage());
                  },
                  boxColor: greenColor,
                  textColor: whiteColor,
                ),
                30.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
