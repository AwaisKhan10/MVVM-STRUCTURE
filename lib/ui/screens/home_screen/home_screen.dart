// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/ui/screens/home_screen/home_view_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "Create An Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
