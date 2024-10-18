import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage(
                    'task2/lib/assests/welcome_image.jpeg'), // Your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.4), // Overlay to darken image
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Geeta text
                Text(
                  "Geeta.",
                  style: TextStyle(
                    fontSize: 55, // As per your example
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'SansSerif', // Adjust font family as needed
                  ),
                ),
                SizedBox(height: 20),
                // Shop Now Button
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white, // Button text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15), // Button size
                  ),
                  child: Text(
                    "SHOP NOW",
                    style: TextStyle(
                      fontSize: 18, // Button text size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40), // Add spacing below button
                // Dots Indicator (just for visual, not functional)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.white),
                    SizedBox(width: 5),
                    Icon(Icons.circle,
                        size: 8, color: Colors.white.withOpacity(0.5)),
                    SizedBox(width: 5),
                    Icon(Icons.circle,
                        size: 8, color: Colors.white.withOpacity(0.5)),
                  ],
                ),
                SizedBox(height: 40), // Final spacing before end of screen
              ],
            ),
          ),
        ],
      ),
    );
  }
}
