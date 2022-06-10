import 'package:developer_alex/network/apis/album.dart';
import 'package:developer_alex/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../entitys/album_entity.dart';
import '../../entitys/user_entity.dart';

class DetailController extends GetxController {
  late UserEntity user;

  /// True means the list folded
  bool fold = false;


  /// List for display
  List<AlbumEntity> get albums {
    if (fold) {
      return <AlbumEntity>[];
    }else {
      return totalList;
    }
  }

  /// Total list
  List<AlbumEntity> totalList = <AlbumEntity>[];

  @override
  void onInit() {
    super.onInit();

    user = Get.arguments;
    loadData();
  }

  /// Load albums from api
  Future<dynamic> loadData() async {
    try {
      List res = await AlbumApi.getAlbumList(userId: user.id ?? 0);
      totalList = res.map((e) => AlbumEntity.fromJson(e)).toList();
      update();
    }catch (e) {
      print('$e');
    }
  }

  /// On fold btn clicked
  void onFold() {
    fold = !fold;
    update();
  }

  /// To Album
  void toAlbumPage({required AlbumEntity data}) {
    Get.toNamed(AppRouter.album,arguments: data);
  }

}