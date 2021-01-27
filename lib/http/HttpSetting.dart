import 'dart:io';
import 'package:dio/dio.dart';
import 'package:zFlutter_demo/common/BaseUrl.dart';
import 'package:zFlutter_demo/entity/BannerEntity.dart';

class HttpSetting {
  static Response response;
  static Dio dio;

  static Map<String, dynamic> jsonHeaders = {
    'Accept': 'application/json,*/*',
    'Content-Type': 'application/json',
  };

  static Map<String, dynamic> xmlHeaders = {
    'Accept': 'application/xml,*/*',
    'Content-Type': 'application/xml;charset=UTF-8',
  };

  static requestHttp<T>(
    String url, {
    parameters,
    method,
    data,
    contentType,
    Function(T t) onSuccess,
    Function(String msg) onError,
  }) async {
    method = method ?? 'GET';
    contentType = contentType ?? 'JSON';
    Map<String, dynamic> httpHeaders;
    // ignore: unrelated_type_equality_checks
    if (httpHeaders == 'XML') {
      httpHeaders = jsonHeaders;
    } else {
      httpHeaders = xmlHeaders;
    }
    var options = BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
      responseType: ResponseType.plain,
      validateStatus: (status) {
        // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
        return true;
      },
      baseUrl: url,
    );
    try {
      if (dio == null) {
        dio = new Dio(options);
      }
      dio.options.headers = httpHeaders;
      dio.interceptors.add(LogInterceptor(responseBody: true)); //开启请求日志
      Response response;
      if (method == 'GET') {
        if (parameters == null) {
          response = await dio.get(url);
        } else {
          response = await dio.get(url, queryParameters: parameters);
        }
      } else if (method == 'POST') {
        if (data == null) {
          response = await dio.post(url);
        } else {
          response = await dio.post(url, data: data);
        }
      }
      var responseData = response.data;
      if (response.statusCode == 200) {
        if (onSuccess != null) {
          onSuccess(responseData);
        }
      } else {
        throw Exception('errorMsg:${response.statusCode}');
      }
      print('dio:' + response.toString());
    } catch (e) {
      print('dio:' + e.toString());
      if (onError != null) {
        onError(e.toString());
      }
    }
  }
}
