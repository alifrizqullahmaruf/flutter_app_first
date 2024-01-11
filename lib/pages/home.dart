import 'package:flutter/material.dart';


// use stl shortcut
class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Breakfast',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        // Membuat tidak ada shadownya
        elevation: 0.0,
        // Membuat title berada di tengah
        centerTitle: true,

        // Leading = untuk bagian kiri
        leading: Container(
          margin: const EdgeInsets.all(10),
          // child: SvgPicture.asset(
          //   'assets/icons/Arrow - Left 2.svg', // Replace with the actual asset path
          //   width: 24, // Set the width as needed
          //   height: 24, // Set the height as needed
          // ),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            // Add child widgets here if needed
          ),
        ],
      ),
    );
  }
}
