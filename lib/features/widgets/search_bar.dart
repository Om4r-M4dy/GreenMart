import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/widgets/custom_text_form_field.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: CustomTextFormField(
        hintText: "Search Store",
        enabled: false,
        prefixIcon: Icon(Icons.search_rounded),
        onTap: () {},
      ),
    );
  }
}
