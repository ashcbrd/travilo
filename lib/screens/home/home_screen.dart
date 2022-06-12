import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travilo/model/place_model.dart';
import 'package:travilo/screens/calendar.dart';
import 'package:travilo/screens/category/hotel/hotel_screen.dart';
import 'package:travilo/screens/detailscreen/detail_screen.dart';
import 'package:travilo/screens/home/widgets/places_card.dart';
import 'package:travilo/screens/map_screen.dart';
import 'package:travilo/utilities/colors.dart';
import '../favorites/favorite_screen.dart';
import 'widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  final GoogleSignInAccount user;

  const HomeScreen({Key? key, required this.user, LatLng? initialCameraPosition}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.home_rounded,
                size: 50,
                color: primaryColor,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MapScreen()
                    )
                  );

                },
                child: const Icon(
                  Icons.map_rounded,
                  size: 50,
                  color: primaryColor,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoriteScreen()
                    )
                  );
                },
                child: const Icon(
                  Icons.favorite,
                  size: 50,
                  color: primaryColor,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Calendar()
                    )
                  );

                },
                child: const Icon(
                  Icons.calendar_month_rounded,
                  size: 50,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app bar
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Hello, ",
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 18,
                          ),
                          children: [
                        TextSpan(
                            text: "Asther Louie Cabardo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ))
                      ]))
                ],
              ),

              // search section
              const SizedBox(
                height: 15,
              ),
              const Text("Explore new destinations",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(100),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search your destination",
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // category
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text("Category",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        CategoryCard(
                            press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelScreen()
                    )
                  );

                            },
                            image: "assets/images/hotel.png",
                            title: "Hotel"),
                        CategoryCard(
                            press: () {},
                            image: "assets/images/park.png",
                            title: "Park"),
                        CategoryCard(
                            press: () {},
                            image: "assets/images/mall.png",
                            title: "Mall"),
                        CategoryCard(
                            press: () {},
                            image: "assets/images/resto.png",
                            title: "Resto"),
                        CategoryCard(
                            press: () {},
                            image: "assets/images/cafe.png",
                            title: "Cafe"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text("Popular Places",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 350,
                  child: ListView.builder(
                      itemCount: places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 15),
                          child: Row(
                            children: [
                              PlacesCard(
                                placeInfo: places[index],
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailScreen(
                                              placeInfo: places[index])));
                                },
                              )
                            ],
                          ),
                        );
                      })))
            ],
          ),
        ),
      )),
    );
  }
}
