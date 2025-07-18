import 'package:flutter/material.dart';
import 'package:freshiest_cwash_admin_side_app/src/core/constant/padding.dart';

class CommonSearchBar extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? hintText;
  final FocusNode focusNode;
  const CommonSearchBar({
    super.key,
    required this.textEditingController,
    this.hintText,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalPadding,
      child: TextFormField(
        controller: textEditingController,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: "Search by Location",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
