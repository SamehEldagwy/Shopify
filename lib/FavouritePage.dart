import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Favourite",style: TextStyle(color: Colors.orangeAccent,fontSize: 20),),);
  }
}