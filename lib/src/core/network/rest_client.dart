import 'dart:convert';

import 'package:flutter_base_project/src/core/storages/local.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:43

final restClient = RestClient();

class RestClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();
  RestClient();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    var token = LocalStorage.getToken();
    var defaultHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    request.headers.addAll(defaultHeaders);
    return _httpClient.send(request);
  }

  @override
  Future<Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    var token = LocalStorage.getToken();
    var defaultHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    if (headers == null) {
      headers = defaultHeaders;
    } else {
      headers.addAll(defaultHeaders);
    }
    return _httpClient.post(url, headers: headers, body: body).timeout(
          const Duration(seconds: 180),
          onTimeout: () => http.Response("Connection Timeout", 408),
        );
  }

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    var token = LocalStorage.getToken();
    var defaultHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    if (headers == null) {
      headers = defaultHeaders;
    } else {
      headers.addAll(defaultHeaders);
    }
    return _httpClient.get(url, headers: headers).timeout(
          const Duration(seconds: 180),
          onTimeout: () => http.Response("Connection Timeout", 408),
        );
  }
}
