import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/network/constant/endpoints.dart';
import 'package:flutter_template/core/utils/constants.dart';
import 'package:flutter_template/service_locator.dart';

class DioClient {
  final Dio _dio = getIt.get<Dio>();

  Map<String, dynamic> headers = {
    "Accept": "application/json",
    "X-CSRF-TOKEN": "",
    "Authorization": "Bearer ",
    // 'x-api-key': Env.stagingKey,
  };

  DioClient() {
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = connectionTimeout
      ..options.receiveTimeout = receiveTimeout
      ..options.responseType = ResponseType.json
      ..options.headers = headers;
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      debugPrint(response.toString());
      return response;
    } on Exception catch (ex) {
      debugPrint(ex.toString());
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      debugPrint(data.toString());
      debugPrint(queryParameters.toString());
      debugPrint(_dio.options.headers.toString());

      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      debugPrint(response.toString());
      return response;
    } on Exception catch (ex) {
      debugPrint(ex.toString());
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on Exception catch (ex) {
      debugPrint(ex.toString());
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } on Exception catch (ex) {
      debugPrint(ex.toString());
      rethrow;
    }
  }
}
