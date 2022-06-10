import 'package:developer_alex/pages/album/album.dart';
import 'package:developer_alex/pages/detail/detail.dart';
import 'package:developer_alex/pages/team/team.dart';
import 'package:get/get.dart';

import '../pages/welcome/welcome_page.dart';

class AppRouter {
  static List<GetPage<dynamic>> get routes => <GetPage<dynamic>>[
    GetPage(name: '/', page: ()=>const WelComePage()),
    GetPage(name: '/team', page: ()=>const TeamPage()),
    GetPage(name: '/detail', page: ()=>const DetailPage()),
    GetPage(name: '/album', page: ()=>const AlbumPage()),
  ];
}