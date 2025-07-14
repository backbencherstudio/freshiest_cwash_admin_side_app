import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constant/padding.dart';
import '../../../../history_screens/presentation/widgets/service_history_card.dart';
import 'car_service_details.dart';
import 'booking_search_bar.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32.h),
        Padding(
          padding: AppPadding.horizontalPadding,
          child: Text("Find your Booking!", style: textTheme.headlineSmall),
        ),
        SizedBox(height: 20.h),
        HomeSearchBar(),
        SizedBox(height: 30.h),
        // CarServiceDetails(),
        // SizedBox(height: 30.h),
        Padding(
          padding: AppPadding.horizontalPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Booking Request", style: textTheme.titleMedium),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: textTheme.bodyMedium?.copyWith(
                    color: Color(0xff989898),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff989898),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Expanded(
            child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.only(bottom: 140.h),
                itemBuilder: (_, index)=>ServiceHistoryCard(),)
        ),



      ],
    );
  }
}
