import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constant/images.dart';
import '../../../../../../core/theme/theme_extension/color_pallete.dart';

class ReviewList extends StatelessWidget{
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.zero,
      itemBuilder: (_, index){
        return Column(
          spacing: 12.h,
          children: [
            Row(
              spacing: 5.w,
              children: [
                Image.asset(AppImages.man,width: 38.w,height: 38.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Courtney Henry"),
                    Row(
                      spacing: 2.w,
                      children: [
                        StarRating(rating: 5,size: 15.sp,),
                        Text("2 mins ago")
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.menu_sharp,color: Colors.black,)
              ],
            ),
            Text("Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 13.sp,
              color: Color(0xff333333)
            )
            ),
            SizedBox(height: 12.h,),
            Divider(color: AppColor.borderColor)
          ],
        );
      },
    );
  }
}