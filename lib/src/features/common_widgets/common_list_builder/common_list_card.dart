import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/constant/icons.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/theme/theme_extension/color_pallete.dart';

class CommonListCard extends StatelessWidget {
  final bool isAcceptRejectButton;
  const CommonListCard({super.key, this.isAcceptRejectButton = true});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Container(
        width: 340.w,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
        margin: EdgeInsets.only(bottom: 18.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 7.r,
              blurRadius: 10.r,
              offset: Offset(0, 3.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.h,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10.w,
              children: [
                ClipOval(child: SvgPicture.asset(AppIcons.carService)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2.h,
                  children: [
                    Text(
                      "Car Wash",
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Car Detailing-Full TIme",
                      style: textTheme.bodyMedium?.copyWith(
                        color: Color(0xffA0A0A0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (isAcceptRejectButton)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  spacing: 15.w,
                  children: [
                    Expanded(
                      child: _buildButton(
                        text: 'Accept',
                        onPressed: () {},
                        textTheme: textTheme,
                      ),
                    ),
                    Expanded(
                      child: _buildButton(
                        text: 'Reject',
                        onPressed: () {},
                        textTheme: textTheme,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget _buildButton({
  required String text,
  required Function onPressed,
  Color? fillColor,
  required TextTheme textTheme,
}) {
  return GestureDetector(
    onTap: onPressed(),
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: fillColor ?? AppColor.primary,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColor.primary),
      ),
      child: Text(
        text,
        style: textTheme.bodyLarge?.copyWith(
          color: fillColor != null ? AppColor.primary : Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
