import 'package:flutter/material.dart';
import 'package:travilo/model/place_model.dart';
import 'package:travilo/utilities/colors.dart';
import 'widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            // app bar
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(""),
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
                          text: "Asther",
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
                          press: () {},
                          image: "assets/images/resort.png",
                          title: "Resort"),
                      CategoryCard(
                          press: () {},
                          image: "assets/images/park.png",
                          title: "Park"),
                      CategoryCard(
                          press: () {},
                          image: "assets/images/hotel.png",
                          title: "Hotel"),
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
            Container(
                height: 350,
                child: ListView.builder(
                    itemCount: places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 15),
                        child: Row(
                          children: [
                            PlacesCard(placeInfo: places[index], press: () {},)
                            ],
                        ),
                      );
                    })))
          ],
        ),
      )),
    );
  }
}

class PlacesCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const PlacesCard({
    Key? key, required this.placeInfo, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(placeInfo.image))),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(placeInfo.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold, 
            ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(placeInfo.category),
            Row(
              children: [
                Icon(Icons.location_on, color: primaryColor,),
                Text(placeInfo.location, 
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),)
              ]
            )

          ]),
        ),
      ),
    );
  }
}
