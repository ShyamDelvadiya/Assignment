import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab_2 extends StatefulWidget {
  const tab_2({Key? key}) : super(key: key);

  @override
  State<tab_2> createState() => _tab_2State();
}

class _tab_2State extends State<tab_2> {
  int selectedindex = 0;



  void increaseimage() {
    setState(() {
      selectedindex = (selectedindex + 1) % imagelist.length;
    });
  }

  void decreaseimage() {
    setState(() {
      selectedindex = (selectedindex - 1) % imagelist.length;
    });
  }

  List<String> imagelist = [
    'assets/0__0.png',
    'assets/0__1.png',
    'assets/0__2.png',
    'assets/0__3.png',
    'assets/0__4.png',
    'assets/0__5.png',
    'assets/0__6.png',
    'assets/0__7.png',
    'assets/0__8.png',
    'assets/0__9.png',
    'assets/0__10.png',
    'assets/0__11.png',
    'assets/0__12.png',
    'assets/0__14.png',
    'assets/0__15.png',
    'assets/0__16.png',
    'assets/0__17.png',
    'assets/0__18.png',
    'assets/0__19.png',
    'assets/0__20.png',
    'assets/0__21.png',
    'assets/0__22.png',
    'assets/0__23.png',
    'assets/0__24.png',
    'assets/0__26.png',
    'assets/0__27.png',
    'assets/0__28.png',
    'assets/0__29.png',
    'assets/0__30.png',
    'assets/0__31.png',
    'assets/0__32.png',
    'assets/0__33.png',
    'assets/0__34.png',
    'assets/0__35.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab-2"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Image.asset(
              imagelist[selectedindex],
              fit: BoxFit.contain,
            ),
          ),


          const SizedBox(
            height: 30,
          ),

          const Text(
            "Use below buttons to rotate image",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue, border: Border.all(color: Colors.blue)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Card(
                        child: IconButton(
                            onPressed: () {
                              increaseimage();
                              // print(index);
                            },
                            icon: const Icon(Icons.arrow_left)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Card(
                        child: IconButton(
                            onPressed: () {
                              decreaseimage();
                              // print(index);
                            },
                            icon: const Icon(Icons.arrow_right)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
