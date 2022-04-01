import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_explore/bindings/products_bindings.dart';
import '../views/landing_screen.dart';
part 'app_routes.dart';

class AppPages {
  static const exploreProductScreen = Routes.exploreProductsScreen;
  static final pages = [
    GetPage(
      name: Routes.exploreProductsScreen,
      page: () => LandingScreen(),
      binding: ExploreBindings(),
    ),
  ];
}