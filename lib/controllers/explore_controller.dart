import 'package:get/get.dart';
import 'package:getx_explore/data/model/explore_model.dart';
import 'package:getx_explore/data/repository/explore_repository.dart';

class ExploreController extends GetxController {
  final ExploreRepository faqRepository;
  ExploreController({required this.faqRepository});

  final _faqList = <ExploreModel>[].obs;
  get faqList => this._faqList.value;
  set faqList(value) => this._faqList.value = value;

  getFaqList(){
    faqRepository.getFaqData().then (( data){
      this.faqList = data;
    });
  }
}