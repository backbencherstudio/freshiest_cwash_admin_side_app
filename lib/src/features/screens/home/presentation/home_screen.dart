import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/constant/padding.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/theme/theme_extension/color_pallete.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/home/presentation/widgets/home_body/home_body.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/home/presentation/widgets/home_header/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(height: 32.h),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
