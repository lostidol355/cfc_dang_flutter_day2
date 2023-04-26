import 'package:cfc_dang_day2/recipe_menu_screen.dart';
import 'package:flutter/material.dart';

class ParticipantView extends StatelessWidget {
  final String name;
  final String pic;
  const ParticipantView({super.key, required this.name, required this.pic});
// ?
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Participant View"),
      ),
      body: Column(
        children: [
          //  box for image

          Container(
            child: Image(image: AssetImage(pic)),
          ),

          Text("Student Name: $name  "),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => RecipeMenuScreen()));
            },
            child: Container(
              height: 100,
              width: 150,
              color: Colors.indigo,
              child: Text(" Click me to go to next screen"),
            ),
          )

          // text for name
        ],
      ),
    );
  }
}


// https://www.youtube.com/@Tech101Nepal/videos
