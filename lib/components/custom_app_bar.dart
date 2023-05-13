import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:happy_nation/components/custom_avatar.dart';
import 'package:happy_nation/components/custom_text.dart';
import 'package:happy_nation/constants/assets/icon_assets.dart';
import 'package:happy_nation/constants/colors.dart';
import 'package:happy_nation/constants/texts_en.dart';
import 'package:happy_nation/controllers/dashboard_controller.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback? onTap;
  final bool withTrailing;
  final EdgeInsets? padding;
  const CustomAppBar(
      {Key? key, this.onTap, this.withTrailing = true, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) => ListTile(
        contentPadding: padding,
        leading: GestureDetector(
          onTap: onTap,
          child: CustomAvatar(
            height: 44,
            width: 44,
            image: controller.userController.currentUser.image,
            hasMedia: controller.userController.currentUser.hasMedia!,
          ),
        ),
        title: CustomText(
          color: Colors.white,
          fontSize: 20,
          text: controller.userController.currentUser.name!.capitalize!,
          textAlign: TextAlign.left,
          fontWeight: FontWeight.w700,
        ),
        // subtitle: CustomText(
        //   color: vodkaColor,
        //   fontSize: 17,
        //   text:
        //       '${ConstantTexts.morning.tr} ${controller.userController.currentUser.firstName.capitalize}!',
        //   textAlign: TextAlign.left,
        //   fontWeight: FontWeight.w100,
        // ),
      ),
    );
  }
}
