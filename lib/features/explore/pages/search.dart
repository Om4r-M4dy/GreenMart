import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';
import 'package:t10_greenmart/features/explore/widgets/custom_search_bar.dart';
import 'package:t10_greenmart/features/explore/widgets/exclusive_offer_list_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  String _searchQuery = '';
  String massage1 = 'Suggested for you';
  String massage2 = 'No Search Result Found';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CustomSearchBar(
          focusNode: _searchFocusNode,
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
              if (_searchQuery.isEmpty) {
                massage1 = 'Suggested for you';
                massage2 = 'No Search Result Found';
              } else {
                massage1 = 'Results';
                massage2 = '';
              }
            });
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(25), child: Text(massage1)),
            ExclusiveOfferListView(products: getProductByName(_searchQuery)),
            SizedBox(height: 40),
            Center(
              child: Text(
                massage2,
                style: TextStyle(fontSize: 18, color: AppColors.grey2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
