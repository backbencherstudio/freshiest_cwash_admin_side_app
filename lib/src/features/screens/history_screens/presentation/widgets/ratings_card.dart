import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingsCard extends StatelessWidget {
  const RatingsCard({super.key});

  Widget raringTile(int rating) {
    return Row(
      spacing: 4.w,
      children: [
        Text(rating.toString()),
        Icon(Icons.star, color: Colors.yellow),
        Expanded(
          child: LinearProgressIndicator(
            minHeight: 6.h,
            borderRadius: BorderRadius.circular(99.r),
            value: rating / 10,
            color: const Color(0xff006D60),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                raringTile(5),
                raringTile(4),
                raringTile(3),
                raringTile(2),
                raringTile(1),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              spacing: 2.h,
              children: [
                Text("4.0", style: Theme.of(context).textTheme.headlineSmall),
                StarRating(rating: 4, size: 16.sp),
                Text(
                  "52 Reviews",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
