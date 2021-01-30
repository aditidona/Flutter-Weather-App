import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      var responseData = jsonDecode(data);
      return responseData;
    } else {
      print(response.statusCode);
    }
  }
}
