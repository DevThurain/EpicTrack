import 'package:dio/dio.dart';
import 'package:epic_track/src/di/locator.dart';
import 'package:epic_track/src/network/api_constants.dart';

class DioClient {

  static Dio getEpicClient() {
    Dio epicClient = locator<Dio>();

    epicClient.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ));

    epicClient.options.baseUrl = ApiConstant.baseUrl;
    epicClient.options.connectTimeout = ApiConstant.DEFAULT_NETWORK_CONNECT_TIMEOUT;
    epicClient.options.receiveTimeout = ApiConstant.DEFAULT_NETWORK_RECEIVE_TIMEOUT;
    epicClient.options.headers.addAll({"Content-Type": "application/json"});
    epicClient.options.headers.addAll({"Accept": "application/json"});
    epicClient.options.headers.addAll({"X-API-TOKEN": ApiConstant.apiKey});

    print('dClient construct complete');
    return epicClient;
  }

  static Dio getEpicClientAuth(String token) {
    Dio epicClient = locator<Dio>();
    // Alice _alice = serviceContainer<Alice>();

    // zClient.interceptors.add(_alice.getDioInterceptor());

    epicClient.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ));

    epicClient.options.baseUrl = ApiConstant.baseUrl;
    epicClient.options.connectTimeout = ApiConstant.DEFAULT_NETWORK_CONNECT_TIMEOUT;
    epicClient.options.receiveTimeout = ApiConstant.DEFAULT_NETWORK_RECEIVE_TIMEOUT;
    epicClient.options.headers.addAll({
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X-API-TOKEN": ApiConstant.apiKey,
      "Authorization": "Bearer $token"
    });
    return epicClient;
  }
}
