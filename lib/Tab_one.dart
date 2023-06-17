import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab_1 extends StatefulWidget {
  const tab_1({Key? key}) : super(key: key);

  @override
  State<tab_1> createState() => _tab_1State();
}

class _tab_1State extends State<tab_1> {
  int selectedindex = 0;
  List<String> imagelist = [
    'assets/chris-lawton-5IHz5WhosQE-unsplash.jpg',
    'assets/davisuko-5E5N49RWtbA-unsplash.jpg',
    'assets/diego-ph-fIq0tET6llw-unsplash.jpg',
    'assets/katie-moum-iRMUDX0kyOc-unsplash.jpg',
    'assets/raimond-klavins-uAk731NvaJo-unsplash.jpg',
  ];

  void changeImage(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab-1"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 300,
            child: Image.asset(
              imagelist[selectedindex],
              fit: BoxFit.contain,
            ),
          ),
          Container(
              margin: const EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              child: const Text(
                "Click here to change image:-",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),

          Container(
            width: 400,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          int index = 0;
                          changeImage(index);
                        },
                        child: const Text("Leaves")),
                    SizedBox(width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          int index = 1;
                          changeImage(index);
                        },
                        child: const Text("orange")),
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          int index = 2;
                          changeImage(index);
                        },
                        child: const Text("Bulb")),
                    SizedBox(width: 20,),

                    ElevatedButton(
                        onPressed: () {
                          int index = 3;
                          changeImage(index);
                        },
                        child: const Text("Mountain")),
                  ],
                )
              ],
            ),
          ),


          ElevatedButton(
              onPressed: () {
                int index = 4;
                changeImage(index);
              },
              child: const Text("Tea")),
        ],
      ),
    );
  }
}
