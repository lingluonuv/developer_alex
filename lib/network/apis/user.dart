
import 'package:developer_alex/network/api.dart';

mixin UserApi implements Api  {
  Future<List> getUserList() async {
    return await get('/users');
  }
}