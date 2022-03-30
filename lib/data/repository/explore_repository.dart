import 'package:getx_explore/data/provider/explore_api.dart';

class ExploreRepository {
  final ProductsApiClient myFaqApiClient;
  ExploreRepository({required this.myFaqApiClient});

  getFaqData(){
    return myFaqApiClient.getProducts();
  }
}