
import 'package:developer_alex/network/http_client.dart';
import 'package:developer_alex/routes/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'network/http_interceptor.dart';

///App env
enum AppEnvEnum {
  dev,
  prod
}

///Application configuration class
class AppConfig {

  ///compiled mod
  static const isRelease = kReleaseMode;
  static const isDebug = kDebugMode;
  static const isProfile = kProfileMode;

  ///base url
  static const devBaseUrl = 'https://jsonplaceholder.typicode.com';
  static const prodBaseUrl = 'https://jsonplaceholder.typicode.com';

  ///env default is dev
  static AppEnvEnum _env = AppEnvEnum.dev;
  static AppEnvEnum get env => _env;

  static AppConfig get obj => _config;


  factory AppConfig() => _config;

  static final AppConfig _config = AppConfig._builder();

  AppConfig._builder();

  ///setup app env
  AppConfig start({required AppEnvEnum env}) {
    _env = env;
    return _config;
  }

  ///setup http client
  AppConfig setupHTTPClient() {

    final BaseOptions options = BaseOptions(
      baseUrl: _env==AppEnvEnum.dev ? devBaseUrl : prodBaseUrl,
      sendTimeout:1500,
      connectTimeout: 1500,
      receiveTimeout: 1500,
    );

    final HttpInterceptor interceptor = HttpInterceptor();

    HTTPClient.obj.init(options: options, interceptors: [interceptor]);
    return _config;
  }

  void run() {
    runApp(GetMaterialApp(
      initialRoute: '/',
      getPages: AppRouter.routes,
    ));
  }

}