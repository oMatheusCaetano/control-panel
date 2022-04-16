import 'package:control_panel/data/services/http/http_response.dart';
import 'package:http/http.dart' as http;

class Http {
  String baseUrl;

  Http(this.baseUrl);

  Future<dynamic> get(String path,
      {Map<String, String> headers = const {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      }}) async {
    final response = await http.get(parseUrl(path), headers: headers);
    return makeResponse(response);
  }

  makeResponse(response) {
    return HttpResponse(
      response.body,
      response.statusCode,
      'Hello World Message',
    );
  }

  Uri parseUrl([String endpoint = '']) {
    String url = baseUrl;

    if (url.endsWith('/')) {
      url = url.substring(0, url.length - 1);
    }

    if (endpoint.startsWith('/')) {
      endpoint = endpoint.substring(1);
    }

    return Uri.parse(url + '/' + endpoint);
  }
}
