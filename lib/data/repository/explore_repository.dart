import 'package:getx_explore/data/provider/explore_api.dart';

class ExploreRepository {
  final ExploreApiClient myFaqApiClient;
  ExploreRepository({required this.myFaqApiClient});

  getFaqData(){
    return myFaqApiClient.getFaq();
  }
}