import 'package:flutter/material.dart';

// use stl shortcut
class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchFields(),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                color: Colors.green.shade300,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _searchFields() {
    return Container(
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
          hintText: 'Search breakfast',
          hintStyle: const TextStyle(color: Colors.black45, fontSize: 14),

          // meambahkan icon pada sebeleh kiri
          prefixIcon: const Icon(Icons.search_rounded),
          // menambahkaan icon pada sebelah kanan
          suffixIcon: Container(
            width: 100,
            child: const IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Colors.black45,
                    indent: 15,
                    endIndent: 15,
                    thickness: 1.0,
                  ),
                  Icon(
                    Icons.menu,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10))
                ],
              ),
            ),
          ),
          // memberikan padiing oada setiap sisinya
          contentPadding: const EdgeInsets.all(15),
          // memberikan border menjadi outline
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
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
