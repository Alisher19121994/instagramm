import 'package:flutter/material.dart';
import 'package:instagram/pages/create_page.dart';
import 'package:instagram/pages/favorite_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/search_page.dart';

import '../home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const String id = "home_id";

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final _pages = [
    const HomePage(),
    const Search(),
    const Create(),
    const Favorite(),
    const Profile()
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tv,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined,color: Colors.white,), label: 'Upload'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.white,), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded,color: Colors.white,), label: 'Profile'),
        ],
        selectedItemColor: Colors.white,
      ),
    );
  }
}
