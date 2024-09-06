import 'package:flutter/material.dart';

class Forgetscreen extends StatefulWidget {
  const Forgetscreen({super.key});

  @override
  State<Forgetscreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<Forgetscreen> {
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
                    // forget title
                    const Text(
                      'Forget Password',
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
                    // back to sign in field
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle forgot password action
                          },
                          child: const Text(
                            'Back to Sign in',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  20, // Increase the size to make the text larger
                              fontWeight: FontWeight
                                  .bold, // Optional: Make the text bold
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),
                        // Login button
                        ElevatedButton(
                          onPressed: () {
                            // Handle forget password action
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
                            'Send OTP',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
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
