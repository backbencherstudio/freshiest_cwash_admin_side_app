import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ServiceStationSearchbar extends StatelessWidget {
  const ServiceStationSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,size: 25.sp,),
        ),

        Expanded(
          child: SearchBar(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            elevation: WidgetStatePropertyAll(0),
            hintText: "Search by Location",
            hintStyle: WidgetStatePropertyAll(
              Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black.withValues(alpha: 0.5),
              ),
            ),
            leading: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
