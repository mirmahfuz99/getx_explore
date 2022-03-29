import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_explore/controllers/explore_controller.dart';

class ExploreScreen extends GetView<ExploreController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          child: GetX<ExploreController>(
            initState: (state) {
              Get.find<ExploreController>().getFaqList();
            },
            builder: (_) {
              return _.faqList.length < 1 ?
              CircularProgressIndicator():
              SingleChildScrollView(
                child: Card(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  elevation: 0.0,
                  child: Text(_.faqList.length),
                ),
              );
            },
          ),
        )
    );
  }

}
