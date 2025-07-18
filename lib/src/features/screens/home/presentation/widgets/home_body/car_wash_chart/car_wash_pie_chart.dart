import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'build_pie_chart.dart';

class CarWashPieChart extends StatelessWidget {
  CarWashPieChart({super.key});

  final Color gNoteColor = Color(0xff3DD34C);
  final Color officeColor = Color(0xff414CAA);
  final Color rCloud = Color(0xff2280FF);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      // height: 300,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.w,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10.h,
                children: [
                  Text(
                    "Last Income",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  _buildContainerButton(
                    color: Color(0xff323232),
                    text: "Apr - Jan",
                    textTheme: textTheme,
                  ),
                ],
              ),

              SizedBox(
                width: 105.w,
                height: 105.h,
                child: BuildPieChart(
                  sectionsColor: [
                    Colors.transparent,
                    officeColor,
                    gNoteColor,

                    rCloud,
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 10.h,
                children: [
                  Text(
                    "+55%",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "month to month",
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Text(
                    "Increase : \n\$4556.8",
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            spacing: 7.w,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildContainerButton(
                color: gNoteColor,
                text: "GNote",
                textTheme: textTheme,
              ),
              _buildContainerButton(
                color: officeColor,
                text: "Office",
                textTheme: textTheme,
              ),
              _buildContainerButton(
                color: rCloud,
                text: "RCloud",
                textTheme: textTheme,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildContainerButton({
  required Color color,
  required String text,
  required TextTheme textTheme,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
      color: color,
    ),
    child: Text(
      text,
      style: textTheme.labelMedium?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
