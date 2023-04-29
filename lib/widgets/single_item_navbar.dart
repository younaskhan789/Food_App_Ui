import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemNavBar extends StatefulWidget {
  const SingleItemNavBar({Key? key}) : super(key: key);

  @override
  State<SingleItemNavBar> createState() => _SingleItemNavBarState();
}

class _SingleItemNavBarState extends State<SingleItemNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
        decoration: BoxDecoration(
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Total Price",style: TextStyle(
                fontSize: 20,color: Colors.white,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 10,),
              Text("\$55",style: TextStyle(
                  fontSize: 20,color: Colors.white,
                  fontWeight: FontWeight.w500
              ),)
            ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEFB322),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Text("Buy Now",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  SizedBox(width: 10,),
                  Icon(CupertinoIcons.cart_fill,size: 30,color: Colors.white,)
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
