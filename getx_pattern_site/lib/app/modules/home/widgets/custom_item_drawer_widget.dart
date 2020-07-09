import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/home_controller.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomItemDrawer extends GetView {
  final String text;
  final int index;

  CustomItemDrawer({@required this.text, this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Get.isDarkMode ? softBlue : spotlightColor,
      splashColor:  Get.isDarkMode ? spotlightColor : softBlue ,
      onTap: () { Get.find<HomeController>().screen = index; print(Get.find<HomeController>().screen ); Scaffold.of(context).openEndDrawer();},
          child: ContainerResponsive(
        padding: EdgeInsets.all(16),
        child: TextResponsive(this.text, style: TextStyle(fontSize:16),)
      ),
    );
  }
}