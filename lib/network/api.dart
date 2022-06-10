import 'package:developer_alex/network/http_client.dart';
import 'package:dio/dio.dart';

mixin Api {
  Future get(String path, {Map<String, dynamic>? queryParameters}) async {
    return HTTPClient.obj.get(path, queryParameters: queryParameters);
  }

  Future post(String path, {data, Map<String, dynamic>? queryParameters}) {
    return HTTPClient.obj.post(path, data: data, queryParameters: queryParameters);
  }
}
