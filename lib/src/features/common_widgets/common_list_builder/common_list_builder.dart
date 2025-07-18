import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/constant/padding.dart';

import 'common_list_card.dart';

class CommonListViewBuilder extends StatelessWidget {
  final String headingText;
  final bool isAcceptRejectButton;
  const CommonListViewBuilder({
    super.key,
    required this.headingText,
    this.isAcceptRejectButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //  spacing: 16.h,
      children: [
        Padding(
          padding: AppPadding.horizontalPadding,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Bookings",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.symmetric(vertical: 20.h),
            itemBuilder: (_, index) {
              return CommonListCard(isAcceptRejectButton: isAcceptRejectButton);
            },
          ),
        ),
      ],
    );
  }
}
