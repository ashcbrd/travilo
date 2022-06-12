import 'package:flutter/material.dart';
import 'package:travilo/utilities/colors.dart';

class FavoriteScreen extends StatefulWidget {
   const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [ 
                    Padding(
                      padding:  const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Material(
                              borderRadius: BorderRadius.circular(100),
                              child: Padding(
                                padding:  const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration:  const BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle),
                                  child:  const Center(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: whiteColor,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text("Liked Places", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
            Padding(
              padding:  const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: [
                    Container( 
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/lacastle.jpg"),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 130, left: 20),
                        child: Text("La Castle Hotel",
                        style: TextStyle(
                          fontSize: 30,
                          color: whiteColor,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Iloilo City Proper, Iloilo City, Iloilo", style: TextStyle(color: whiteColor, fontSize: 15),),
                      )
                    ],
                  )
                
                ]),
             ),
            ),
            Padding(
              padding:  const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: [
                    Container( 
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/tatoys.jpeg"),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 130, left: 20),
                        child: Text("Tatoy's Manokan and Seafoods",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 30,
                          color: whiteColor,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 200),
                        child: Text("Villa, Iloilo City", style: TextStyle(color: whiteColor, fontSize: 15),),
                      )
                    ],
                  )
                
                ]),
             ),
            ),

            Padding(
              padding:  const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: [
                    Container( 
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/yakimix.jpeg"),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 130, right: 200),
                        child: Text("Yakimix",
                        style: TextStyle(
                          fontSize: 30,
                          color: whiteColor,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Benigno Aqiono Ave., Diversion Road, Time Swuare, Gaisano Iloilo City Center, Iloilo City",
                        maxLines: 1,
                overflow: TextOverflow.ellipsis, style: TextStyle(color: whiteColor, fontSize: 15),),
                      )
                    ],
                  )
                
                ]),
             ),
            ),


            
          ],
        ),
      ),
    );
  }
}
