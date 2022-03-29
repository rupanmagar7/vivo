import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivo_nepal/view/widgets/homepage.dart';
import 'package:vivo_nepal/view/widgets/login.dart';
import 'package:vivo_nepal/view/widgets/profilepage.dart';
import 'package:vivo_nepal/view/widgets/searchpage.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: const [Icon(Icons.shopping_cart)],
            title: const Center(child: Text("Apple")),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              setState(() {});
              print(index);
            },
            currentIndex: currentIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
            ],
          ),
          body: currentIndex == 0
              ? const HomePageWidget()
              : currentIndex == 1
                  ? const ProfileWidge()
                  : currentIndex == 2
                      ? const SearchPageWidget()
                      : const LoginWidget()),
    );
  }
}
