import 'package:get/get.dart';
import 'package:getx_explore/data/provider/explore_api.dart';
import 'package:http/http.dart' as http;
import '../controllers/explore_controller.dart';
import '../data/repository/explore_repository.dart';

class ExploreBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ExploreController>((){
      return ExploreController(faqRepository: ExploreRepository(myFaqApiClient: ExploreApiClient(httpClient: http.Client())));
    }
    );
  }
}