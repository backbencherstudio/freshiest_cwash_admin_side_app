import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/booking_screen/presentation/widgets/booking_body/booking_body.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/booking_screen/presentation/widgets/booking_header.dart';
import '../../../../core/theme/theme_extension/color_pallete.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BookingHeader(),
          Positioned.fill(
            top: 138.h,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.onPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                )
              ),
              child: BookingBody(),
            ),),

        ],
      ),
    );
  }
}
