import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({super.key});

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  List myList = [
    "Avatar",
    "Inception",
    "The Shawshank Redemption",
    "The Godfather",
    "Pulp Fiction",
    "The Dark Knight",
    "Fight Club",
    "Forrest Gump",
    "The Matrix",
    "Star Wars: Episode IV - A New Hope",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 5,
        crossAxisCount: 3,
        children: List.generate(myList.length, (index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              color: Colors.pink[50],
              child: Text(myList[index]),
            ),
          );
        }),
      ),
    );
  }
}
