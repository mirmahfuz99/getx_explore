import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/explore_model.dart';

class ExploreApiClient {
  final http.Client httpClient;

  ExploreApiClient({ required this.httpClient});

  getFaq() async {
    Uri url = Uri.parse('url');
    try {
      var response = await httpClient.get(url);
      if(response.statusCode == 200){
        Iterable  jsonResponse = json.decode(response.body);
        List<ExploreModel> listFaqModel = jsonResponse.map((model) => ExploreModel.fromJson(model)).toList();
        return listFaqModel;
      }else print("error !");
    }catch(_) {

    }
  }

}