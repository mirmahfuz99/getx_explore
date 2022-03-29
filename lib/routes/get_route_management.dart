import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_explore/bindings/explore_bindings.dart';
import 'package:getx_explore/routes/routing_constants.dart';
import 'package:getx_explore/views/explore_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: exploreScreenRoute,
      page: () => ExploreScreen(),
      binding: ExploreBindings(),
    ),
  ];
}