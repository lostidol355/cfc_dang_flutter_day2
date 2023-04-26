import 'package:cfc_dang_day2/screens/participant_view.dart';
import 'package:cfc_dang_day2/screens/recipe_menu_screen.dart';
import 'package:flutter/material.dart';
import '../data/participant_data.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipely - The recipe app"),
      ),

      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(20),
      //         child: Container(
      //           height: 200,
      //           width: 150,
      //           decoration: BoxDecoration(
      //               color: Colors.indigo,
      //               gradient: LinearGradient(
      //                   begin: Alignment.topCenter,
      //                   end: Alignment.bottomCenter,
      //                   colors: [Colors.white, Colors.black.withOpacity(0.7)])),
      //           child: Image(
      //             image: AssetImage("assets/images/bibek.jpg"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Stack(
      //       children: [
      //         Container(height: 200, width: 150, color: Colors.red),
      //         Container(height: 100, width: 100, color: Colors.green),
      //         Container(height: 50, width: 50, color: Colors.indigo),
      //       ],
      //     ),
      //     Stack(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(10),
      //             child: Container(
      //               height: 200,
      //               width: 150,
      //               // decoration: BoxDecoration(border: Border.all()),
      //               child: Image(
      //                 image: AssetImage(
      //                   "assets/images/bibek.jpg",
      //                 ),
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(10),
      //             child: Container(
      //               height: 200,
      //               width: 150,
      //               decoration: BoxDecoration(
      //                   gradient: LinearGradient(
      //                       begin: Alignment.bottomCenter,
      //                       end: Alignment.topCenter,
      //                       colors: [
      //                     Colors.black.withOpacity(0.7),
      //                     Colors.white,
      //                   ])),
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           left: 10,
      //           bottom: 10,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               Text(
      //                 "1. Omelet Recipes",
      //                 style: TextStyle(color: Colors.white),
      //               ),
      //               Row(
      //                 children: [
      //                   Icon(
      //                     Icons.book,
      //                     color: Colors.white,
      //                   ),
      //                   Text(
      //                     "17 recipes",
      //                     style: TextStyle(color: Colors.white),
      //                   )
      //                 ],
      //               )
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //     ElevatedButton(
      //         onPressed: () {
      //           print(" I am clicked");

      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => RecipeMenuScreen()));
      //         },
      //         child: Text(" Go to Next Screen"))
      //   ],
      // ),

      body: ListView(
          children: List.generate(
              participantsName.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ParticipantView(
                                      name: participantsName[index]['name'],
                                      pic: participantsName[index]['pic'],
                                    )));
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image(
                            image: AssetImage(participantsName[index]['pic'])),
                        // backgroundColor: Colors.red,
                        // child: Text("${index + 1}. "),
                      ),
                      title: Text(
                        participantsName[index]['name'],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 20,
                          // fontWeight: FontWeight.bold,
                        )),
                      ),
                      subtitle: Text(
                        "Yo i am subtitle",
                        style: GoogleFonts.balooPaaji2(
                            // textStyle: TextStyle()

                            ),
                      ),
                    ),
                    // child: Container(
                    //   height: 100,
                    //   width: 100,
                    //   color: Colors.indigo,
                    //   child: Text(
                    //     "${index + 1}. " + participantsName[index],
                    //     style: TextStyle(fontSize: 30, color: Colors.white),
                    //   ),
                    // ),
                  ))),
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
