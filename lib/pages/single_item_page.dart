import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/single_item_navbar.dart';

class SingleItemPage extends StatefulWidget {
  const SingleItemPage({Key? key}) : super(key: key);

  @override
  State<SingleItemPage> createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 32,
                            color: Colors.white,
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 10),
                            child: Icon(
                              CupertinoIcons.cart_fill,
                              size: 32,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: Image.asset("images/1.png",
                          height: MediaQuery.of(context).size.height / 1.7),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hot & Fresh Burger",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap:(){},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,

                                      ),
                                    child: Icon(CupertinoIcons.minus,size: 22,),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("2",style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                                SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){},
                                  child: Container(
                                    alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                    child: Icon(CupertinoIcons.plus,size: 22,),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("We bring you the burger with cheese served with onion, and cold drinks as well as fries.We bring you the burger with cheese served with onion, and cold drinks as well as fries",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                      )
                  ]
                  ),
                    ],
                  )

              ),
            ),
        ),
      bottomNavigationBar: SingleItemNavBar(),

    );
  }
}
