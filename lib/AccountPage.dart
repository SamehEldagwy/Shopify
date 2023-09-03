import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Account extends StatefulWidget {
   Account({super.key});



  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  
 var user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Container(
            width: screenWidth*5/6,
            height: screenHeight*2/3,
            decoration: BoxDecoration(
              color:  Color.fromARGB(55, 185, 184, 184),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Column(
                  
                  children: [ 
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                      radius: 50,
                      backgroundImage: AssetImage("assets/man.png"),
                    
                    ),
                    SizedBox(height: 40,),
                Row(
                  children: [
                    Text("Your Name: ",style: TextStyle(fontSize: 26),),
                    Text(user!.displayName!,style: TextStyle(fontSize: 23),),
                  ],
                ),
                
                
                ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}

