import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/padding.dart';
import '../../../../../../core/theme/theme_extension/color_pallete.dart';

class HomeHeader extends StatelessWidget{
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  Padding(
      padding: AppPadding.horizontalPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5.h,
            children: [
              Text(
                "Hey, Danial",
                style: textTheme.headlineSmall?.copyWith(
                  color: AppColor.onPrimary,
                ),
              ),
              Text(
                "Hope you are having a nice day!",
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColor.onPrimary,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: AppColor.onPrimary,
              size: 24.sp,
            ),
          ),
        ],
      ),
    );
  }
}