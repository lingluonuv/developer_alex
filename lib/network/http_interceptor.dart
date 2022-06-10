import 'package:developer_alex/app_config.dart';
import 'package:dio/dio.dart';

class HttpInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (AppConfig.isDebug) {
      print('Dio on request');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (AppConfig.isDebug) {
      print('Dio on response');
    }
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (AppConfig.isDebug) {
      print('Dio on err');
    }
    handler.next(err);
  }

}