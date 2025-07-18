import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/theme/theme_extension/color_pallete.dart';

import '../../../common_widgets/common_list_builder/common_list_builder.dart';
import '../../../common_widgets/search_bar/search_bar.dart';

class RequestScreen extends StatefulWidget{
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {

  late final TextEditingController _textEditingController;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonSearchBar(
              textEditingController: _textEditingController,
              focusNode: _focusNode,
            ),

            SizedBox(height: 39.h,),

            Expanded(child: CommonListViewBuilder(

              headingText: "Request",
              isAcceptRejectButton: true,
            )),
          ],
        ),
      ),
    );
  }
}