import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constant/auth_field_decoration.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/ui/custom_widget/custom_interests_button.dart';
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
                      text: model.selectedInterests[index],
                      onTap: () {
                        model.onClick(index);
                      },
                      isSelected: model.isSelected(
                        model.selectedInterests[index],
                      ),
                    ),
                  ),
                ),
                30.verticalSpace,

                Text(
                  "Select Interests",
                  style: style16,
                ),
                30.verticalSpace,
                // ListView.builder(
                //     itemCount: model.interests.length,
                //     itemBuilder: (context, index) {
                //       return CustomInterestButton(
                //         text: model.interests[index],
                //         onTap: () {
                //           // Handle tap for each interest
                //           print('Selected: ${model.interests[index]}');
                //         },
                //       );
                //     }),

                // Generate buttons dynamically
                Wrap(
                  children: List.generate(
                    model.interests.length,
                    (index) => CustomInterestButton(
                      text: model.interests[index],
                      onTap: () {
                        model.onClick(index);
                      },
                      isSelected: model.isSelected(
                        model.interests[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
