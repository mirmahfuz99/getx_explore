import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../controllers/products_controller.dart';
import '../data/provider/products_api.dart';
import '../data/repository/products_repository.dart';

class ExploreBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ExploreController>((){
      return ExploreController(faqRepository: ExploreRepository(myFaqApiClient: ProductsApiClient(httpClient: http.Client())));
    }
    );
  }
}