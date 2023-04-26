import 'package:flutter/material.dart';
import './participant_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipely - The recipe app"),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.black.withOpacity(0.7)])),
                child: Image(
                  image: AssetImage("assets/images/bibek.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(height: 200, width: 150, color: Colors.red),
              Container(height: 100, width: 100, color: Colors.green),
              Container(height: 50, width: 50, color: Colors.indigo),
            ],
          )
        ],
      ),
      // body: ListView(
      //     children: List.generate(
      //         participantsName.length,
      //         (index) => Padding(
      //               padding: const EdgeInsets.all(8.0),

      //               child: ListTile(
      //                 leading: CircleAvatar(
      //                   radius: 30,
      //                   child: Image(
      //                       image: AssetImage(participantsName[index]['pic'])),
      //                   // backgroundColor: Colors.red,
      //                   // child: Text("${index + 1}. "),
      //                 ),
      //                 title: Text(participantsName[index]['name']),
      //                 subtitle: const Text("Yo i am subtitle"),
      //               ),
      //               // child: Container(
      //               //   height: 100,
      //               //   width: 100,
      //               //   color: Colors.indigo,
      //               //   child: Text(
      //               //     "${index + 1}. " + participantsName[index],
      //               //     style: TextStyle(fontSize: 30, color: Colors.white),
      //               //   ),
      //               // ),
      //             ))),
      // children: [

      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(height: 100, width: 100, color: Colors.red),
      //   ),

      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(height: 100, width: 100, color: Colors.red),
      //   ),
      //   Container(height: 100, width: 100, color: Colors.red),
      //   Container(height: 100, width: 100, color: Colors.red),
      //   Container(height: 100, width: 100, color: Colors.red),
      //   Container(height: 100, width: 100, color: Colors.red),
      //   Container(height: 100, width: 100, color: Colors.red),
      //   Container(height: 100, width: 100, color: Colors.red),
      //   Container(height: 100, width: 100, color: Colors.red),
      // ],
    );
  }
}