import 'package:flutter/material.dart';
import 'package:food_app/widgets/home_navbar.dart';
import 'package:food_app/widgets/items_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.sort_rounded,color: Colors.white,size: 35,),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.search,color: Colors.white,size: 35,),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Hot & Fast Food",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 35
                  ),),
                ),
                SizedBox(height: 5,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Delivers on Time',style: TextStyle(
                  fontSize: 22,
                  color: Colors.white60,
                ),),
                ),
                SizedBox(height: 15),
                TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: "Burger",),
                    Tab(text: "Pizza",),
                    Tab(text: "Cheese",),
                    Tab(text: "Pasta",),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                     ItemWidget(),
                      ItemWidget(),
                      ItemWidget(),
                      ItemWidget(),


                    ],
                  ),
                )
              ],
            ),
          ),

        ),
        bottomNavigationBar: HomeNovBar(),
        ),
    );
  }
}
