import 'package:flutter/material.dart';
import 'package:instagram/pages/create_page.dart';
import 'package:instagram/pages/favorite_page.dart';
import 'package:instagram/pages/home/homes.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/search_page.dart';
import 'package:instagram/pages/story_page/feed_page.dart';
import 'package:instagram/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Home(),
      routes: {
        Home.id: (context) => Home(),
        HomePage.id: (context) => HomePage(),
        Feeds.id: (context) => Feeds(),
        Favorite.id: (context) => Favorite(),
        Create.id: (context) => Create(),
        Profile.id: (context) => Profile(),
        Search.id: (context) => Search()
      },
    );
  }
}
