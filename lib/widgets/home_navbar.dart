import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNovBar extends StatefulWidget {
  const HomeNovBar({Key? key}) : super(key: key);

  @override
  State<HomeNovBar> createState() => _HomeNovBarState();
}

class _HomeNovBarState extends State<HomeNovBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          blurRadius: 8,
          spreadRadius: 1,
        )
      ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.mail,size: 35,color: Colors.white,),
          Icon(Icons.favorite_outlined,size: 35,color: Colors.white,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFEFB322),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8
                )
              ]

            ),
            child: Icon(CupertinoIcons.cart_fill,size: 35,color: Colors.white,),
          ),
          Icon(Icons.notifications,size: 35,color: Colors.white,),
          Icon(Icons.person,size: 35,color: Colors.white,),
        ],
      ),

    );
  }
}
