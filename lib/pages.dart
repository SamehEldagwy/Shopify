import 'package:flutter/material.dart';
import 'package:shopify/AccountPage.dart';
import 'package:shopify/FavouritePage.dart';
import 'package:shopify/HomePage.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
   int indexValue = 0;
  List<Widget> pages = const [
    HomePage(),
    Favourite(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexValue,
       selectedItemColor: Color(0xffF25E3D),
       unselectedItemColor: Colors.grey,
        
        onTap: (index) {
          setState(() {
            indexValue = index;
          });
        },
        backgroundColor:  Color.fromARGB(255, 255, 255, 255),
        
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Favourite", icon: Icon(Icons.favorite_outline_rounded)),
          BottomNavigationBarItem(label: "Account", icon: Icon(Icons.account_balance_rounded)),
        ],
      ),
      
    
      body: pages[indexValue],
    );
  }
}