import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_explore/bindings/explore_bindings.dart';
import 'package:getx_explore/views/explore_screen.dart';
part 'app_routes.dart';

class AppPages {
  static const exploreProductScreen = Routes.exploreProductsScreen;
  static final pages = [
    GetPage(
      name: Routes.exploreProductsScreen,
      page: () => ExploreScreen(),
      binding: ExploreBindings(),
    ),
  ];
}