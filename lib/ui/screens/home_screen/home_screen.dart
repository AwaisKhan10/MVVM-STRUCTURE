import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/main.dart';
import 'package:mvvm/ui/screens/home_screen/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
          builder: (context, model, child) => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      model.onCLick();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: model.isSelected ? Colors.red : Colors.greenAccent,
                      child: Center(
                        child: Text(
                          model.mvvm,
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      model.onCLick();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: model.isSelected
                          ? Colors.greenAccent
                          : Colors.redAccent,
                      child: Center(
                        child: Text(
                          model.mvvm,
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
