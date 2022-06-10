
import 'dart:ui';

import 'package:developer_alex/common/extensions/color.dart';
import 'package:developer_alex/pages/team/team_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/Themes/colors.dart';
import '../../common/layout/spacing.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TeamController>(init: TeamController(),builder: (controller)=>Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      appBar: AppBar(
        title: const Text('Our Team'),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return _item(index: index);
      },itemCount: 10,),
    ));
  }

  ///item container
  Widget _item({required int index}) {
    return Container(
      margin: EdgeInsets.only(left: 12,right: 12,bottom: 6,top: index==0 ? 12 : 6),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.yellow
            ),
          ),
          Spacing.hs(10),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User name',style: ThemeColors.dark.ts(16,fontWeight:FontWeight.w600),),
              Spacing.vs(2),
              Text('demo1@findmail.com',style: ThemeColors.ff0500ff.ts(12),),
              Spacing.vs(2),
              Text('www.Demo1.findmail.com',style: ThemeColors.ffa4a4a4.ts(10),)
            ],
          ),),
          const Icon(Icons.arrow_forward_ios_rounded,size: 12,color: ThemeColors.ff969797,),
        ],
      ),
    );
  }
}
