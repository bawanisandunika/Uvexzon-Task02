import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/login_image.jpg'), // Path to background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay to dim the background image
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white.withOpacity(0.8), // Adjust transparency level
          ),
          // Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Title: Geeta.
                  const Text(
                    'Geeta.',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Black text color
                      fontFamily: 'Roboto', // Adjust font family if needed
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Subtitle
                  const Text(
                    'Create your fashion\nin your own way',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Black text color
                      fontWeight: FontWeight.bold, // Semi-bold
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Description
                  const Text(
                    'Each men and women has their own style, Geeta help you to create your unique style.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54, // Dark grey text color
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, // Text color (black)
                      backgroundColor:
                          Colors.white, // Button background (white)
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Colors.black, width: 1.5), // Border color
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold, // Bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // OR Divider
                  Row(
                    children: const [
                      Expanded(
                          child: Divider(
                              color: Colors.black54)), // Dark grey divider
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.black54), // Dark grey text
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.black54)),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Register Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // White text color
                      backgroundColor: Color(0xFF6A4FFF), // Purple button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80),
                    ),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold, // Bold
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
