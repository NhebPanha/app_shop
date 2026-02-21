import 'package:flutter/material.dart';
import 'package:shop_app/utils/app_colors.dart';
import 'package:shop_app/utils/app_font_size.dart';
import 'package:shop_app/utils/applabel.dart';

class DetailScreen extends StatefulWidget {
  final String name;
  final String image;
  final dynamic price;
  final dynamic afterdiscount;
  final String description;
  final String category;
  final double rating;
  final int ratingCount;
  final bool isFavorite;
  final List<dynamic> images;
  DetailScreen({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.afterdiscount,
    required this.description,
    required this.category,
    required this.rating,
    required this.ratingCount,
    this.isFavorite = false,
    this.images = const [],
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// bloc product image
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 60, // important!
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.images.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.grey,
                        image: DecorationImage(
                          image: NetworkImage(widget.images[index]),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: selectIndex == index
                              ? AppColors.pink
                              : AppColors.grey,
                          width: selectIndex == index ? 2 : 0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 15),
            AppLabel(
              text: widget.category,
              fontSize: AppFontSize.value13,
              colors: AppColors.pink,
            ),
            AppLabel(
              text: widget.name,
              fontSize: AppFontSize.value16,
              fontWeight: FontWeight.w700,
              colors: AppColors.black,
            ),

            Row(
              children: [
                Icon(Icons.star, color: AppColors.pink, size: 16),
                SizedBox(width: 5),
                AppLabel(
                  text: "${widget.rating} | ",
                  fontSize: AppFontSize.value13,
                  colors: AppColors.grey,
                ),
                AppLabel(
                  text: "${widget.ratingCount} Reviews",
                  fontSize: AppFontSize.value13,
                  colors: AppColors.pink,
                ),
              ],
            ),
            SizedBox(height: 10),
            AppLabel(
              text: "Information Product",
              fontSize: AppFontSize.value15,
            ),
            AppLabel(
              text: widget.description,
              fontSize: AppFontSize.value12,
              colors: AppColors.black.withValues(alpha: 0.5),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                AppLabel(
                  text: "\$${widget.price}",
                  fontSize: AppFontSize.value14,
                  fontWeight: FontWeight.w500,
                  colors: AppColors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
                SizedBox(width: 10),
                AppLabel(
                  text: "\$${widget.afterdiscount}",
                  fontSize: AppFontSize.value18,
                  fontWeight: FontWeight.w700,
                  colors: AppColors.black,
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppLabel(
                          text: "Checkout Now",
                          fontSize: AppFontSize.value16,
                          fontWeight: FontWeight.w500,
                          colors: AppColors.white,
                        ),
                        Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
