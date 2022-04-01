import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'products_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<LandingScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          const Center(
            child: Text(
              'Home',
              style: optionStyle,
            ),
          ),
          ExploreScreen(),
          const Center(
            child: Text(
              'Inbox',
              style: optionStyle,
            ),
          ),
          const Center(
            child: Text(
              'Shop',
              style: optionStyle,
            ),
          ),
        ],
        index: _selectedIndex,
      ),

      bottomNavigationBar:
      ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        items: [
          TabItem(
            icon: SvgPicture.asset("assets/home.svg"),
            title: 'Home',),
          TabItem(
            icon: SvgPicture.asset("assets/explore.svg"),
            title: 'Explore',),
          TabItem(
            icon: SvgPicture.asset("assets/inbox.svg"),
            title: 'Inbox',),
          TabItem(
            icon: SvgPicture.asset("assets/shop.svg"),
            title: 'Shop',),
        ],
        initialActiveIndex: 2,//optional, default as 0
        onTap: _onItemTapped,
      )
    );
  }
}
