import 'package:developer_alex/common/Themes/colors.dart';
import 'package:developer_alex/common/layout/spacing.dart';
import 'package:developer_alex/common/widgets/clear_app_bar.dart';
import 'package:developer_alex/pages/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DetailController(),
      builder: (controller) {
        return Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: ThemeColors.white,
            ),
            Container(
              height: 280,
              width: Get.width,
              child: Image.asset('assets/images/detail_cover.png',fit: BoxFit.cover,),
            ),
            Scaffold(
              backgroundColor: ThemeColors.clear,
              appBar: ClearAppBar(),
              body: Stack(

              ),
            ),
          ],
        );
      },
    );
  }
}
