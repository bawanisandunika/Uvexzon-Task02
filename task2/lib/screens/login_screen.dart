import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/background_image.jpeg'), // Background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black
                .withOpacity(0.5), // Overlay to make the text more visible
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Title: Geeta.
                  Text(
                    'Geeta.',
                    style: TextStyle(
                      fontSize: 45, // Match the given font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Subtitle
                  Text(
                    'Create your fashion\nin your own way',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:
                          20, // Adjust subtitle font size as per the interface
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),

                  // Description text
                  Text(
                    'Each men and women has their own style, Geeta help you to create your unique style.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14, // Adjust description font size
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: 40),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      // Logic for Login button
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, // Text color inside the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Colors.black,
                            width: 1.5), // Border for the button
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80), // Button size
                    ),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 16, // Button font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // OR Divider
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: Colors.white),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Register Button
                  ElevatedButton(
                    onPressed: () {
                      // Logic for Register button
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color(0xFF5B4FFF), // Text color inside the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80), // Button size
                    ),
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 16, // Button font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
