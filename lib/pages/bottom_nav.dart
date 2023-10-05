import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/orders_page.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/pages/wishlist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(),
      Wishlist(),
      OrdersPage(),
      ProfilePage(),
    ];
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        // unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              color: Colors.black,
              width: 22,
              height: 22,
            ),
            title: Text("Home"),
            selectedColor: Colors.purple,
            // unselectedColor: Colors.grey,
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/like.png',
              color: Colors.black,
              width: 22,
              height: 22,
            ),
            title: Text("Whislist"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/cart.png',
              color: Colors.black,
              width: 25,
              height: 25,
            ),
            title: Text("Orders"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.person),
            title: Text("Profile"),
            selectedColor: Colors.purple,
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
