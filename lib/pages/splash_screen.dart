import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/splash.jpg",
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.contain,
            opacity: const AlwaysStoppedAnimation<double>(0.3),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.25,
              ),
              Text(
                "Look\n Awesome & Save Some",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Sansation",
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              Text(
                "Step into a world of personalized services that enhance your beauty and well-being. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Sansation",
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: MediaQuery.sizeOf(context).width * 0.1,
            right: MediaQuery.sizeOf(context).width * 0.1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Let’s Start"),
            ),
          )
        ],
      ),
    );
  }
}
