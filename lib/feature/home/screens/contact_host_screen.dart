import 'dart:ui';

import 'package:flutter/material.dart';
import 'property_desc_screen.dart';

class ContactHostScreen extends StatelessWidget {
  const ContactHostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Stack(
        children: [
          // Background content (ScreenA)
          const Scaffold(
              backgroundColor: Colors
                  .transparent, // Make the scaffold background transparent

              body: PropertyDesc()),

          // Blurred container
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 5, sigmaY: 5), // Adjust the blur intensity
            child: AnimatedOpacity(
              opacity:
                  1, // Set the initial opacity to 0.0 and animate it to 1.0 when showing
              duration: const Duration(milliseconds: 300),
              // ignore: use_colored_box
              child: Container(
                color: Colors.grey
                    .withOpacity(0.3), // Adjust the container color and opacity
                child: const Center(
                  child: Text(
                    'Container Content',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
