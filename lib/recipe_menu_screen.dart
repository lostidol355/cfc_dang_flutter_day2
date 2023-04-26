import 'package:flutter/material.dart';

// stlss
// Widget

class RecipeMenuScreen extends StatelessWidget {
  const RecipeMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe View Screen"),
      ),
      body: Column(
        children: [
          Text(
            "Recipe Menu Screen",
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"))
        ],
      ),
    );
  }
}
