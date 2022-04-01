import 'package:flutter_test/flutter_test.dart';
import 'package:getx_explore/data/model/products_model.dart';
import 'package:getx_explore/data/provider/products_api.dart';
import 'package:http/http.dart' as http;

void main() {
  test('main', () async {
    ProductsModel productsModel = await ProductsApiClient(httpClient: http.Client()).getProducts();
    print(productsModel);
  });
}