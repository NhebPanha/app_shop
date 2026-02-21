import 'dart:convert';
import 'dart:developer';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/app_bar_widget.dart';
import 'package:shop_app/components/app_search_widget.dart';
import 'package:shop_app/model/filter_list_model.dart';
import 'package:shop_app/model/product_grid_model.dart';
import 'package:shop_app/model/slider_model.dart';
import 'package:shop_app/utils/app_colors.dart';
import 'package:shop_app/utils/app_font_size.dart';
import 'package:shop_app/utils/applabel.dart';
import 'package:shop_app/view/detail_screen/detail_screen.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// bloc app bar
          AppBarWidget(),

          /// bloc search
          AppSearchWidget(hintText: "search", searchController: search),

          /// bloc filter list
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filterListModel.length,
              itemBuilder: (ctx, index) {
                final item = filterListModel[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: AppColors.trans,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: AppColors.grey.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: AppLabel(
                      text: item.name,
                      fontSize: AppFontSize.value13,
                      colors: AppColors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: CarouselSlider(
                      items: sliderList.map((item) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            item.imagePath,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 120,
                        viewportFraction: 0.8,
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                    ),
                  ),

                  /// bloc product grid
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLabel(
                        text: "New Arrivals",
                        fontSize: AppFontSize.value16,
                        colors: AppColors.black,
                      ),
                      AppLabel(
                        text: "See All",
                        fontSize: AppFontSize.value13,
                        colors: AppColors.red,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      height: double.infinity,
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3,
                          mainAxisExtent: 250,
                        ),
                        itemCount: productList.length,
                        itemBuilder: (ctx, index) {
                          final item = productList[index];
                          return Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    ctx,
                                    MaterialPageRoute(
                                      builder: (ctx) => DetailScreen(
                                        name: item.name,
                                        image: item.image,
                                        price: item.price,
                                        afterdiscount: item.afterdiscount,
                                        description: item.description,
                                        category: item.category,
                                        rating: item.rating,
                                        ratingCount: item.ratingCount,
                                        isFavorite: item.isFavorite,
                                        images: item.images,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: AppColors.trans,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: AppColors.grey.withValues(
                                        alpha: 0.3,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          color: AppColors.trans,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(item.image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppLabel(
                                              text: item.name,
                                              fontSize: AppFontSize.value14,
                                              colors: AppColors.black,
                                              fontWeight: FontWeight.w700,
                                              textOverflow: TextOverflow.clip,
                                            ),
                                            Row(
                                              children: [
                                                AppLabel(
                                                  text: "\$${item.afterdiscount}",
                                                  fontSize: AppFontSize.value13,
                                                  colors: AppColors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                SizedBox(width: 10),
                                                AppLabel(
                                                  text: "\$${item.price}",
                                                  fontSize: AppFontSize.value16,
                                                  colors: AppColors.red,
                                                  fontWeight: FontWeight.w500,
                                                  decoration:
                                                      TextDecoration.lineThrough,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              /// bloc favorite icon
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.grey.withValues(
                                      alpha: 0.5,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: item.isFavorite
                                      ? Icon(
                                          Icons.favorite,
                                          color: AppColors.redFFF.withValues(
                                            alpha: 0.7,
                                          ),
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          color: AppColors.black.withValues(
                                            alpha: 0.7,
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
