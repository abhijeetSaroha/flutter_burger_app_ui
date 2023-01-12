import 'package:flutter/material.dart';
import 'package:flutter_app_hamburger/burger_page.dart';
import 'package:flutter_app_hamburger/categories.dart';
import 'package:flutter_app_hamburger/hamburgers_list.dart';
import 'package:flutter_app_hamburger/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
        // buttonBarTheme: const ButtonBarThemeData(),
      ),
      home: const Hamburger(),
      routes: {BurgerPage.tag: (_) => BurgerPage()},
    );
  }
}

class Hamburger extends StatelessWidget {
  const Hamburger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            title: const Center(child: Text("Deliver Me")),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          const Header(),
          const Categories(),
          HamburgersList(
            row: 1,
          ),
          HamburgersList(
            row: 2,
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Colors.teal,
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                const Spacer(),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
