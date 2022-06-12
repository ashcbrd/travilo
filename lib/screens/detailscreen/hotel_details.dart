import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travilo/utilities/colors.dart';
import '../../model/place_model.dart';

class HotelDetails extends StatefulWidget {

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/richmonde.jpeg",
              width: double.infinity,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
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
                              elevation: 5,
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
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(100),
                            child: Padding(
                              padding:  const EdgeInsets.all(6.0),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration:  const BoxDecoration(
                                    color: whiteColor, shape: BoxShape.circle),
                                child:  const Center(
                                  child: Icon(
                                    Icons.favorite,
                                    color: primaryColor,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding:  const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Richmonde Hotel",
                                  style:  TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  )),
                               const SizedBox(
                                height: 12,
                              ),
                              Row(children: const [
                                 Icon(
                                  Icons.location_on,
                                  color: primaryColor,
                                ),
                                 SizedBox(
                                  height: 12,
                                ),
                                Flexible(
                                  child: Text(
                                    "Megaworld Boulevard corner Enterprise Road Iloilo Business Park, Mandurriao, Iloilo City, 5000 Iloilo",
                                    style:  TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                              ]),
                               const SizedBox(
                                height: 15,
                              ),
                               const Text("Details",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  )),
                               const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Boasting a prestigious address, Richmonde Hotel Iloilo offers guests not just convenience but also exceptional accommodation in the Philippines’ City of Love. With a contemporary design and a calming ambience, Richmonde Hotel in Iloilo rivals the quality of service and facilities of 5-star brands yet offers the best value for money. Expect well-appointed rooms and first-class amenities during your stay. In accordance with Iloilo City’s anti-smoking ordinance 2006-150, Richmonde is a smoke-free hotel.",
                                style:  TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                               const SizedBox(
                                height: 10,
                              ),
                               const Divider(
                                height: 5,
                                color: Colors.black,
                              ),
                               const SizedBox(
                                height: 10,
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
