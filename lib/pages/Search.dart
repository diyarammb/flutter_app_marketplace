import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            hintText: "Search",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: (10.0),
                      ),
                      Text("Popular Services",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w800)),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // children: [
                  //   Container(
                  //     padding: const EdgeInsets.all(8),
                  //     width: 100,
                  //     height: 100,
                  //     color: Colors.blueGrey,
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: [
                  //         Image.asset("assets/daya.jpg"),
                  //       ],
                  //     ),
                  //   ),
                  //   Container(
                  //     padding: const EdgeInsets.all(8),
                  //     width: 100,
                  //     height: 100,
                  //     color: Color.fromARGB(255, 250, 173, 8),
                  //   ),
                  //   Container(
                  //     padding: const EdgeInsets.all(8),
                  //     width: 100,
                  //     height: 100,
                  //     color: Color.fromARGB(255, 235, 16, 16),
                  //   ),
                  // ],
                ),
              ),
            ],
          ),
        ),
      ),

      // ignore: dead_code
    );
  }
}
