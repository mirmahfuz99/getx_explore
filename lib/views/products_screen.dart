import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx_explore/controllers/products_controller.dart';
import 'package:getx_explore/views/widget/image_tile.dart';
import '../data/model/products_model.dart';

class ExploreScreen extends GetView<ExploreController> {

  static const pattern = [
    StairedGridTile(0.5, 1),
    StairedGridTile(0.5, 4 / 4),
    StairedGridTile(1.0, 10 / 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          child: GetX<ExploreController>(
            initState: (state) {
              Get.find<ExploreController>().getFaqList();
            },
            builder: (_) {
              List<Products> productsList = _.faqList;
              return _.faqList.length < 1 ?
              Center(child: CircularProgressIndicator()):
              Directionality(
                textDirection: TextDirection.ltr,
                child: GridView.custom(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverStairedGridDelegate(
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 8,
                    startCrossAxisDirectionReversed: true,
                    pattern: pattern,
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                        (context, index) {
                      final tile = pattern[index % pattern.length];
                      return ImageTile(
                        imagePath: productsList.elementAt(index).thumbnail!,
                        width: (tile.aspectRatio * 150).ceil(),
                        height: 150,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}
