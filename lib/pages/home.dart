import 'package:flutter/material.dart';

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
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                color: Colors.green.shade300,
                child: ListView.builder(
                  itemCount: 3, // Adjust the itemCount as needed
                  itemBuilder: (context, index) {
                    return Container(); // Placeholder, replace with actual content
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
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search breakfast',
          hintStyle: const TextStyle(color: Colors.black45, fontSize: 14),
          prefixIcon: const Icon(Icons.search_rounded),
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
                  Padding(padding: EdgeInsets.only(left: 10)),
                ],
              ),
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          child: const Icon(Icons.drag_indicator_rounded),
        ),
      ],
    );
  }
}
