import 'package:developer_alex/entitys/user_entity.dart';
import 'package:developer_alex/network/apis/user.dart';
import 'package:developer_alex/routes/app_router.dart';
import 'package:get/get.dart';

class TeamController extends GetxController {

  ///user list
  List<UserEntity> userList = <UserEntity>[];

  ///init
  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  ///get user list by api
  Future<void> loadData() async {
    try {
      List res = await UserApi.getUserList();
      userList = res.map((e) => UserEntity.fromJson(e)).toList();
      update();
    }catch (e) {
      //error handler
      print('$e');
    }
  }

  ///to detail page
  void toDetailPage() {
    Get.toNamed(AppRouter.detail);
  }

}