import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper{

  NetworkHelper(this.url);
  final String url;
   getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      String data = response.body;
      print(data);
      var jsondecodedData = jsonDecode(data);
      return jsondecodedData;
    }else{
      print(response.statusCode);
    }
  }
}