import 'package:developer_alex/common/Themes/colors.dart';
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
        return Scaffold(
          backgroundColor: ThemeColors.white,
          appBar: AppBar(
            backgroundColor: ThemeColors.clear,
            elevation: 0,
          ),
          body: Stack(),
        );
      },
    );
  }
}
