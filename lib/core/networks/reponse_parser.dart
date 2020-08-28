import 'package:cleanArchBloc/core/networks/network_helper.dart';

enum HttpMethodType { GET, POST, DELETE }

class ResponseParser {
  Future<String> parseResponse(
      HttpMethodType methodType, String urlEndpoint, Map body) async {
    switch (methodType) {
      case HttpMethodType.GET:
        final data =
            await NetworkHelper().get(urlEndpoint, queryParameters: body);
        return data.body;
      case HttpMethodType.POST:
        return null;
        break;
      case HttpMethodType.DELETE:
        return null;
        break;
    }
    return null;
  }
}
