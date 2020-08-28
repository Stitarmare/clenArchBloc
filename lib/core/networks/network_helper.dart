import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'dart:convert';
import 'dart:io';

enum Environment { PRODUCTION, DEVLOPMENT, UAT }

class BaseUrl {
  BaseUrl();
  static var environment = Environment.DEVLOPMENT;
  static String getBaseUrl() {
    switch (environment) {
      case Environment.PRODUCTION:
        return "";
      case Environment.DEVLOPMENT:
        return "https://www.potterapi.com/v1/";
      case Environment.UAT:
        return "";
      default:
        return "";
    }
  }

  static String getBaseUrlImages() {
    switch (environment) {
      case Environment.PRODUCTION:
        return "";
      case Environment.DEVLOPMENT:
        return "https://www.potterapi.com/v1/";
      case Environment.UAT:
        return "";
      default:
        return "";
    }
  }
}

class NetworkHelper {
  static final NetworkHelper _apiBaseHelper = NetworkHelper._internal();
  factory NetworkHelper() {
    return _apiBaseHelper;
  }
  NetworkHelper._internal();
  static var apiTimeStamp = Duration(seconds: 60);

  Map<String, String> getHeader(String url) {
    return {
      HttpHeaders.authorizationHeader: "",
      HttpHeaders.contentTypeHeader: "",
      HttpHeaders.acceptHeader: ""
    };
  }

  Future<http.Response> get(String url, {Map queryParameters}) async {
    var uri = Uri.https(BaseUrl.getBaseUrl(), url, queryParameters);
    final response = await http.get(uri).timeout(
      apiTimeStamp,
      onTimeout: () {
        return null;
      },
    );
    return response;
  }
}
