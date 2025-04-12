import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.red,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          color: Colors.blue,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              color: Colors.black,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 250,
                  height: 100,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
