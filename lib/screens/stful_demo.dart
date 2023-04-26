import 'package:flutter/material.dart';

class StfulDemo extends StatefulWidget {
  const StfulDemo({super.key});

  @override
  State<StfulDemo> createState() => _StfulDemoState();
}

class _StfulDemoState extends State<StfulDemo> {
  TextEditingController _nameController = TextEditingController();
  Color boxColor = Colors.pink;
  String boxText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statful Widget Demo"),
      ),
      body: SingleChildScrollView(
        // imp
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (userContent) {
                    setState(() {
                      boxText = userContent;
                    });
                  },
                  controller: _nameController,
                  decoration: InputDecoration(
                      label: Text("Name"),
                      hintText: "Enter your name",
                      helperText: "Please enter your name and surname",
                      // border

                      border: OutlineInputBorder())),
            ),
            ElevatedButton(
                onPressed: () {
                  print(_nameController.text);

                  setState(() {
                    boxText = _nameController.text;
                  });
                },
                child: Text("Submit")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: double.maxFinite,
                color: boxColor,
                child: Center(child: Text(boxText)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        boxColor = Colors.indigo;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.indigo,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        boxColor = Colors.green;
                      });
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.teal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.yellow,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
