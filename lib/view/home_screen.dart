import 'package:flutter/material.dart';
import 'package:shop_app/components/app_bar_widget.dart';
import 'package:shop_app/components/app_search_widget.dart';
import 'package:shop_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
           AppBarWidget(),
           AppSearchWidget(
           hintText: "search",
            searchController: search,
           ),
        ]
      ),
    );
  }
}
