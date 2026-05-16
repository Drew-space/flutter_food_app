import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/page/booking.dart';
import 'package:food_app/page/cart.dart';
import 'package:food_app/page/home.dart';
import 'package:food_app/page/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home home;
  late Booking booking;
  late Cart cart;
  late Profile profile;

  void initState() {
    super.initState();
    home = const Home();
    booking = const Booking();
    cart = const Cart();
    profile = const Profile();

    pages = [home, cart, booking, profile];
    currentPage = home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.orange,
        height: 65.0,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) => setState(() {
          currentIndex = index;
        }),

        items: [
          Icon(Icons.home_outlined, size: 30.0, color: Colors.white),
          Icon(Icons.shopping_cart_outlined, size: 30.0, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, size: 30.0, color: Colors.white),
          Icon(Icons.person_outlined, size: 30.0, color: Colors.white),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
