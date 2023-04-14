// import 'package:alice/alice.dart';

import 'package:alice/alice.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:pentarex/api/api_endpoints.dart';

class DioModule with DioMixin implements Dio {
  DioModule._() {
    options = BaseOptions(
        contentType: 'application/json',
        connectTimeout: 10 * 1000,
        sendTimeout: 10 * 1000,
        receiveTimeout: 10 * 1000,
        followRedirects: true,
        receiveDataWhenStatusError: true,
        baseUrl: Endpoint.baseUrl);

    try {
      interceptors.add(Alice().getDioInterceptor());
    } catch (_) {}

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => DioModule._();
}
