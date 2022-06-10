import 'package:developer_alex/common/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../layout/spacing.dart';

class ClearAppBar extends AppBar {

  final void Function()? back;

  ClearAppBar({Key? key, this.back}) : super(key: key) ;

  @override
  Color? get backgroundColor => ThemeColors.clear;

  @override
  Widget? get leading => Row(
    children: [
      Spacing.hs(16),
      InkWell(
        onTap: (back !=null) ? back :Get.back,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color:ThemeColors.a8ffffff,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(Icons.arrow_back_ios_outlined,size: 20,color: ThemeColors.dark,),
        ),
      )
    ],
  );

  @override
  double? get elevation => 0;



}
