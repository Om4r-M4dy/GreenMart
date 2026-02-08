import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/features/explore/pages/search.dart';
import 'package:t10_greenmart/features/explore/widgets/custom_search_bar.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, SearchScreen());
      },
      child: AbsorbPointer(child: CustomSearchBar()),
    );
  }
}
