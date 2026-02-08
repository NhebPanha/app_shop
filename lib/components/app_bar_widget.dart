import 'package:flutter/material.dart';
import 'package:shop_app/components/app_icon_widget.dart';
import 'package:shop_app/utils/app_colors.dart';
import 'package:shop_app/utils/app_font_size.dart';
import 'package:shop_app/utils/app_icon_path/app_icon_svg_path.dart';
import 'package:shop_app/utils/applabel.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/1200x/a3/3c/54/a33c5490f844b85984da5d5fdd22d8fd.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLabel(
                    text: "Good Morning",
                    fontSize: AppFontSize.value14,
                    colors: AppColors.white,
                  ),
                  AppLabel(
                    text: "Siyam",
                    fontSize: AppFontSize.value12,
                    colors: AppColors.grey,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              AppIconWidget(icons: AppIconSvgPath.iconShop, notification: 1),
              SizedBox(width: 10),
              AppIconWidget(icons: AppIconSvgPath.iconNotification, notification: 1),
            ],
          ),
        ],
      ),
    );
  }
}
