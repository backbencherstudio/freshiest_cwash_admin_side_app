import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/constant/padding.dart';

import 'car_wash_chart/car_wash_chart.dart';
import 'car_wash_chart/car_wash_pie_chart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: AppPadding.horizontalPadding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
          ),
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 32.h, bottom: 50.h),
          children: [
            Text("Find Your Car Wash", style: textTheme.titleLarge),
            SizedBox(height: 36.h),
            CarWashChart(),
            SizedBox(height: 30.h),
            CarWashPieChart(),
          ],
        ),
      ),
    );
  }
}
