import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/padding.dart';

class ServiceBookingButton extends StatelessWidget {
  const ServiceBookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: SizedBox(
        height: 60.h,
        child: Row(
          children: <Widget>[
            // SvgPicture.asset(AppIcons.chat),
            //  SizedBox(width: 12.w,),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                ),
                onPressed: () {
                  // context.push(RouteName.serviceBookingScreen);
                },
                child: Text("Done"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
