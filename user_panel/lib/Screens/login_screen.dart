import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // This boolean controls the visibility of the password
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the size of the screen
    final size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: const Color(0xFFE7F2E4), // Background color for the top section
        child: Column(
          children: [
            // Top section with logo
            Container(
              height: screenHeight * 0.3, // 30% of screen height
              width: screenWidth, // Full screen width
              decoration: const BoxDecoration(
                color: Color(0xFFE7F2E4),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/SKR 1 (splash logo).jpg', // Add your logo asset here
                  width: screenWidth * 0.6, // Adjust logo width as needed
                  height: 200.0,
                ),
              ),
            ),
            // Bottom section with form
            Container(
              height: screenHeight * 0.7, // 70% of screen height
              width: screenWidth, // Full screen width
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Login title
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Phone number field
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number', // Label text above the TextField
                          style: TextStyle(
                            color: Colors.grey[
                                700], // Match the label color from the image
                            fontSize:
                                16, // Adjust the font size to match the image
                            fontWeight: FontWeight
                                .bold, // Bold text to match the image style
                          ),
                        ),
                        const SizedBox(
                            height:
                                8.0), // Spacing between the label and the TextField
                        TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Enter your phone number', // Placeholder text inside the TextField
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    // Password field
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password', // Label text above the TextField
                          style: TextStyle(
                            color: Colors.grey[
                                700], // Match the label color from the image
                            fontSize:
                                16, // Adjust the font size to match the image
                            fontWeight: FontWeight
                                .bold, // Bold text to match the image style
                          ),
                        ),
                        const SizedBox(
                            height:
                                8.0), // Spacing between the label and the TextField
                        // Password field with visibility toggle
                        TextField(
                          obscureText: !_isPasswordVisible, // Toggle visibility
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible =
                                      !_isPasswordVisible; // Toggle visibility
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Login button
                    ElevatedButton(
                      onPressed: () {
                        // Handle login action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFFA3D3A2), // Background color for the button
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Forgot Password and Register text
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle forgot password action
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        TextButton(
                          onPressed: () {
                            // Navigate to the Register screen
                            Get.off(() => const RegisterScreen());
                          },
                          child: const Text(
                            'New User? Register',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
