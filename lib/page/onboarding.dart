import "package:flutter/material.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 120.0),
            Center(
              child: Image.asset(
                "images/pan.png",
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Discover your food",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Browse top restaurants, order in seconds, and enjoy meals delivered right to you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,

                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),

            SizedBox(height: 130.0),

            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 50,

                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Color(0xffff734c),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Next",

                    style: TextStyle(
                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
