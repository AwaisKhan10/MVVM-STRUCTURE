// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/ui/screens/subscrptions/plans/subscription_plans_view_model.dart';
import 'package:provider/provider.dart';

class SubscriptionPlansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SubscriptionPlansViewModel(),
      child: Consumer<SubscriptionPlansViewModel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "$staticAssets/obaording3.png",
                  scale: 3,
                  width: double.infinity,
                ),
                30.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Chnage your Mindset. Chnage your Future. Become more Financially SAVO",
                    style: style16,
                  ),
                ),
                _subScriptionCards(model,
                    title: 'FREE TRIAL',
                    subTitle: 'FREE',
                    price: 'Limited access to videos and courses.',
                    value: 0),
                _subScriptionCards(model,
                    title: 'MONTHLY',
                    subTitle: '\$21.99/month',
                    price: 'usd/month',
                    value: 1),
                _subScriptionCards(model,
                    title: 'ANNUALLY',
                    subTitle: '\$199.99/year',
                    price: 'usd/month',
                    value: 2),
                20.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_subScriptionCards(
  SubscriptionPlansViewModel model, {
  required String? title,
  required String? subTitle,
  required String? price,
  required int value,
}) {
  return GestureDetector(
    onTap: () {
      model.onclick(value);
    },
    child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: model.selectedValue == value ? greenColor : Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$title",
                style: style16.copyWith(fontSize: 12, color: greyColor),
              ),
              Radio(
                value: value, // 👈 unique value for each card
                groupValue: model.selectedValue,
                activeColor: Colors.green, // green color
                onChanged: (value) {
                  model.onclick(value);
                },
              ),
            ],
          ),
          Text(
            "$subTitle",
            style: style16,
          ),
          Text(
            "$price",
            style: style16.copyWith(fontSize: 12, color: greyColor),
          ),
        ],
      ),
    ),
  );
}
