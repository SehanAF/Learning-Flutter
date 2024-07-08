
import "package:flutter/material.dart";
import "package:myapp/ToDo/home_page.dart";
import "package:myapp/pages/pages_ecommerce/home_page.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(
                "images/logo1.png",
                height: 240,
              ),
          
              const SizedBox(height: 28,),
          
              // title
              const Text(
                "AeroStreet",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "Arial",
                ),
              ),
          
              //sub title
          
              const Text(
                "Bran new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: "Arial",
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageEcommerce(),
                  )),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Arial",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}