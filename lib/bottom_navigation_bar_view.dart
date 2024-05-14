import 'package:flutter/material.dart';
import 'package:ptc_test/screens/home/cart_screen.dart';
import 'package:ptc_test/screens/home/explore.dart';
import 'package:ptc_test/screens/home/favorite_screen.dart';
import 'package:ptc_test/screens/home/profile_screen.dart';
import 'package:ptc_test/screens/home/shop_screen.dart';
import 'package:ptc_test/widgets/my_bottom_navigation_bar.dart';
import 'package:ptc_test/widgets/my_bottom_navigation_bar_item.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({super.key});
  static String route = 'bottom_navigation_bar_view';

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  static const screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  int _selectedTap = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: screens[_selectedTap],
    );
  }

  MyBottomNavigationBar _buildBottomNavigationBar() {
    return MyBottomNavigationBar(
      items: [
        MyBottomNavigationBarItem(
          icon: 'assets/store.svg',
          label: 'Shop',
          isSelected: _selectedTap == 0,
          onPressed: () {
            setState(() {
              _selectedTap = 0;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/explore.svg',
          label: 'Explore',
          isSelected: _selectedTap == 1,
          onPressed: () {
            setState(() {
              _selectedTap = 1;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/cart.svg',
          label: 'Cart',
          isSelected: _selectedTap == 2,
          onPressed: () {
            setState(() {
              _selectedTap = 2;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/favorite.svg',
          label: 'Favorite',
          isSelected: _selectedTap == 3,
          onPressed: () {
            setState(() {
              _selectedTap = 3;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/person.svg',
          label: 'Profile',
          isSelected: _selectedTap == 4,
          onPressed: () {
            setState(() {
              _selectedTap = 4;
            });
          },
        ),
      ],
    );
  }
}
