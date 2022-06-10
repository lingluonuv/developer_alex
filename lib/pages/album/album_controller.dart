import 'package:developer_alex/entitys/album_entity.dart';
import 'package:developer_alex/network/apis/photo.dart';
import 'package:get/get.dart';

import '../../entitys/photo_entity.dart';

class AlbumController extends GetxController {

  ///Args from last page
  late AlbumEntity album;

  ///Data resource
  List<PhotoEntity> photos = <PhotoEntity>[];

  @override
  void onInit() {
    super.onInit();

    album = Get.arguments;

    loadData();
  }

  ///Get photos from api
  Future<dynamic> loadData() async {
    try {
      List res = await PhotoApi.getPhotoList(albumId: album.id ?? 0);
      photos = res.map((e) => PhotoEntity.fromJson(e)).toList();
      update();
    }catch (e) {
      print('$e');
    }
  }

}