import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/get_route_management.dart';

Future<void> main() async {
  runApp(CSEBanglaAPP());
}

class CSEBanglaAPP extends StatelessWidget {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: _globalKey,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
    );
  }
}


