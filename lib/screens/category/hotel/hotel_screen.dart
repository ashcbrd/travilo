import 'package:flutter/material.dart';
import 'package:travilo/screens/detailscreen/hotel_details.dart';

import '../../../utilities/colors.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              color: primaryColor, shape: BoxShape.circle),
                          child: const Center(
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
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage("assets/images/hotel.png"),
                          width: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Hotel",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        child: Text(
                          "La Castle Hotel",
                          style: TextStyle(
                              fontSize: 30,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Iloilo City Proper, Iloilo City, Iloilo",
                          style: TextStyle(color: whiteColor, fontSize: 15),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HotelDetails()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                          image: AssetImage("assets/images/richmonde.jpeg"),
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 130, right: 60),
                          child: Text(
                            "Richmonde Hotel",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 30,
                                color: whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Megaworld Boulevard corner Enterprise Road Iloilo Business Park, Mandurriao, Iloilo City, 5000 Iloilo",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        image: AssetImage("assets/images/zuri.jpeg"),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 130, right: 170),
                        child: Text(
                          "Zuri Hotel",
                          style: TextStyle(
                              fontSize: 30,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Benigno Aquino Ave, Mandurriao, Iloilo City, 5000 Iloilo",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: whiteColor, fontSize: 15),
                        ),
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
