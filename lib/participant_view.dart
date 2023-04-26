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

          Text("Student Name: $name  ")

          // text for name
        ],
      ),
    );
  }
}
