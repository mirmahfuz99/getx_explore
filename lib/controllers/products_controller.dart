import 'package:get/get.dart';
import 'package:getx_explore/data/model/products_model.dart';
import 'package:getx_explore/data/repository/products_repository.dart';

class ExploreController extends GetxController {
  final ExploreRepository faqRepository;
  ExploreController({required this.faqRepository});

  final _faqList = <Products>[].obs;
  get faqList => this._faqList.value;
  set faqList(value) => this._faqList.value = value;

  getFaqList(){
    faqRepository.getFaqData().then (( data){
      this.faqList = data;
    });
  }
}