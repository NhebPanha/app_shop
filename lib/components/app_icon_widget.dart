import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/utils/app_colors.dart';
import 'package:shop_app/utils/app_icon_path/app_icon_svg_path.dart';

class AppIconWidget extends StatelessWidget {
  final int notification;
  final String icons;

  AppIconWidget({required this.notification, required this.icons});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: AppColors.grey.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(child: SvgPicture.asset(icons, width: 24, height: 24)),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: notification == 0 ? SizedBox.shrink() :Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.redFFF,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
