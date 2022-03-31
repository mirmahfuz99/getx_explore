import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/products_model.dart';

class ProductsApiClient {
  final http.Client httpClient;
  ProductsApiClient({ required this.httpClient});

  getProducts() async {
    Uri url = Uri.parse('https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9');
    try {
      var response = await httpClient.get(url);
      if(response.statusCode == 200){
        ProductsModel productsModel = ProductsModel.fromJson(json.decode(response.body));
        print(productsModel.products!.length);
        return productsModel.products;
      }else print("error !");
    }catch(_) {

    }
  }
}