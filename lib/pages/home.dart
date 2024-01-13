import 'package:flutter/material.dart';

// use stl shortcut
class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            // Memberikan margin dan juga color pada container
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0),
              ],
            ),
            // Menambahkan tetxfield
            child: TextField(
              decoration: InputDecoration(
                // dapat di berikan warna
                filled: true,
                fillColor: Colors.white,
                // meambahkan icon pada sebeleh kiri
                prefixIcon: const Icon(Icons.search_rounded),
                // menambahkaan icon pada sebelah kanan
                suffixIcon: const Icon(Icons.menu),
                // memberikan padiing oada setiap sisinya
                contentPadding: const EdgeInsets.all(15),
                // memberikan border menjadi outline
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
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

        // Leading = untuk bagian kiri icon
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: const Icon(Icons.arrow_back_ios_new),
        ),

        // actions untuk bagian kanan appbar icon
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Icon(Icons.drag_indicator_rounded),
          ),
        ]);
  }
}
