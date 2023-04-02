// ignore_for_file: strict_raw_type, inference_failure_on_function_invocation

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:logger/logger.dart';
import 'package:dio/adapter.dart';
import 'package:spacex_simple_api/core/exceptions/client_exception.dart';

class DioService {
  DioService({
    Logger? log,
    int retries = 1,
  }) : _log = log ??
            Logger(
              printer: PrettyPrinter(
                printTime: true,
              ),
            ) {
    _dio.options.connectTimeout = 3000;
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        logPrint: _log.e,
        retries: retries,
        retryDelays: const [
          Duration(milliseconds: 300),
        ],
      ),
    );
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
  final _dio = Dio();
  final Logger _log;

  Future<Response> get(
    String url, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    bool? followRedirects,
  }) async {
    _log.i(
      'GET Request: $url \n'
      'Headers: ${jsonEncode(headers ?? {})}',
    );
    try {
      final response = await _dio.get(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
        ),
      );
      _log.i(
        'REQUESTED URL ${response.realUri}:\n'
        'GET Response ${response.statusCode}:\n'
        '${jsonEncode(response.data)}',
      );
      return response;
    } on DioError catch (e, stackTrace) {
      _log.wtf('REQUESTED URL ${e.response!.realUri}:\n');
      _log.e(e.response.toString(), e, stackTrace);
      return e.response!;
    } on ClientException catch (e, stackTrace) {
      _log.e(e, null, stackTrace);
      rethrow;
    }
  }
}
