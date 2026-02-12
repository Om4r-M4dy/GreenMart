import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, this.focusNode, this.onChanged});

  final FocusNode? focusNode;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onChanged: onChanged,
      focusNode: focusNode,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      backgroundColor: WidgetStatePropertyAll(AppColors.accent),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      constraints: BoxConstraints(maxHeight: 47, minHeight: 47,),
      elevation: WidgetStatePropertyAll(0),
      hintText: "Search Store",
      hintStyle: WidgetStatePropertyAll(
        TextStyles.caption.copyWith(
          color: AppColors.grey2,
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Icon(Icons.search_rounded),
    );
  }
}
