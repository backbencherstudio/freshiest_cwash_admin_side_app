import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/home_screen/presentation/widget/car_drop_down_button.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/home_screen/presentation/widget/select_order_date_time.dart';
import '../../../../core/constant/padding.dart';
import '../../service_details_screen/presentation/widgets/service_cover_photo.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          ServiceCoverPhoto(),
          Expanded(child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: 17.h,),
              Padding(
                padding: AppPadding.horizontalPadding,
                child: Text("Select Your Availability",style: textTheme.headlineSmall,),
              ),
              // SelectOrder(),
               SizedBox(height: 24.h,),
              SelectDateAndTime(),
              SizedBox(height: 24.h,),

              Padding(
                padding: AppPadding.horizontalPadding,
                child: CarDropdownButton(
                  onChanged: (value){},
                  items: ["5,000", "10,000", "15,000", "20,000", "30,000",],
                  hint: "Select Your Price",
                ),
              ),
              SizedBox(height: 24.h,),

              Padding(
                padding: AppPadding.horizontalPadding,
                child: ElevatedButton(onPressed: ()async{
                  // await bookingConfirmationDialog(context: context);

                }, child: Text("Submit"),),
              ),
              SizedBox(height: 140.h,),
            ],
          ))
        ],
      ),
    );
  }
}