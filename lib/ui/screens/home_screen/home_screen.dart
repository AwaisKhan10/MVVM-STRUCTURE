import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/main.dart';
import 'package:mvvm/ui/screens/home_screen/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
          builder: (context, model, child) => Scaffold(
            backgroundColor: whiteColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ListView(),

                    // GridView(
                    //   shrinkWrap: true,
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: 2,
                    //           mainAxisSpacing: 15,
                    //           crossAxisSpacing: 15),
                    //   children: [
                    //     _container(),
                    //     _container(),
                    //     _container(),
                    //   ],
                    // ),

                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15),
                      itemBuilder: (context, index) {
                        return _container();
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // Container(
                    //   height: 200,
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     shrinkWrap: true,
                    //     children: [
                    //       _container(),
                    //       _container(),
                    //       _container(),
                    //     ],
                    //   ),
                    // ),

                    Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return _container();
                          }),
                    )

                    // TableCalendar(
                    //   selectedDayPredicate: (day) {
                    //     return isSameDay(model.selectDay, day);
                    //   },
                    //   onDaySelected: (selectedDay, focusedDay) {
                    //     model.OnDaySelected(selectedDay, focusedDay);
                    //   },
                    //   calendarFormat: CalendarFormat.week,
                    //   firstDay: DateTime.utc(2010, 10, 16),
                    //   lastDay: DateTime.utc(2030, 3, 14),
                    //   focusedDay: DateTime.now(),
                    //   weekNumbersVisible: false,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     model.onCLick();
                    //   },
                    //   child: Container(
                    //     padding: const EdgeInsets.all(10),
                    //     color: model.isSelected ? Colors.red : Colors.greenAccent,
                    //     child: Center(
                    //       child: Text(
                    //         model.mvvm,
                    //         style:
                    //             TextStyle(color: Colors.white, fontSize: 20.sp),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     model.onCLick();
                    //   },
                    //   child: Container(
                    //     padding: EdgeInsets.all(10),
                    //     color: model.isSelected
                    //         ? Colors.greenAccent
                    //         : Colors.redAccent,
                    //     child: Center(
                    //       child: Text(
                    //         model.mvvm,
                    //         style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

_container() {
  return Container(
    height: 200,
    width: 200,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: blackColor, borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.person_2,
          color: whiteColor,
          size: 80.sp,
        ),
        Text(
          "Awais khan",
          style: TextStyle(color: whiteColor),
        )
      ],
    ),
  );
}
