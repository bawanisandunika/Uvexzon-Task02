import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/welcome_image.jpeg'), // Ensure the path matches your image location
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // 'Geeta.' Text
                Text(
                  'Geeta.',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Roboto', // Ensure you have the font available
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                // 'SHOP NOW' button
                ElevatedButton(
                  onPressed: () {
                    // Add your button functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    backgroundColor: Colors
                        .transparent, // Button's background color transparent
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // Rounded corners
                      side: BorderSide(
                          color: Colors.white, width: 2), // White border
                    ),
                  ),
                  child: Text(
                    'SHOP NOW',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // Page indicator (dots)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPageIndicator(true), // Active dot
                    _buildPageIndicator(false), // Inactive dot
                    _buildPageIndicator(false), // Inactive dot
                  ],
                ),
                SizedBox(height: 50), // Space at the bottom
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Page indicator builder
  Widget _buildPageIndicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
