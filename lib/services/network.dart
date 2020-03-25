import 'dart:convert';

import 'package:bitcoin_ticker/utility/constants.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {

  NetworkHelper({this.url});

  final String url;


  Future getData() async{
    print(url);
    http.Response response = await http.get(url, headers: {apiKeyHeader:apiKey});
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(' $response.statusCode');
    }
  }

}