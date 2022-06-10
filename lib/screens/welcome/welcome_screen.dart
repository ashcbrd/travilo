import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travilo/provider/google_sign_in.dart';
import 'package:travilo/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/welcome.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset("assets/images/travilo.png",
                          width: double.infinity),
                    ),
                    const Text(
                      "Travel Iloilo with Love",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          height: 1.6,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 30),
    
                    // login buttons
                      ElevatedButton(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                            provider.googleLogin();
                        },
                          style: ElevatedButton.styleFrom(
                            primary: whiteColor,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                            )
                          ) ,
                          child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/google.png",
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Continue with Google",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                    
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                                          ElevatedButton(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                            provider.googleLogin();
                        },
                          style: ElevatedButton.styleFrom(
                            primary: whiteColor,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                            )
                          ) ,
                          child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/facebook.png",
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Continue with Facebook",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                    
                      ),
                    
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                  ]),
            ),
          ),
        )
      ],
    ));
  }
}
