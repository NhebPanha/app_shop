import 'package:flutter/material.dart';
import 'package:shop_app/utils/app_colors.dart';

class AppSearchWidget extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;

  const AppSearchWidget({
    required this.searchController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.grey.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          border: InputBorder.none, // ✅ remove border
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,

          prefixIcon: Icon(
            Icons.search,
            size: 20,
            color: AppColors.white,
          ),
          suffixIcon: Icon(
            Icons.sort,
            size: 28,
            color: AppColors.white,
          ),

          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.white.withValues(alpha: 0.6)),

          isDense: true, // ✅ fixes height
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
        ),
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}