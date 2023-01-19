import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  var heartColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 80),
          Text(
            '$count',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 237, 155, 248), fontSize: 50),
          ),
          InkWell(
              onTap: (() {
                setState(() {
                  count++;
                });
              }),
              child: const Icon(
                Icons.heart_broken,
                size: 80,
                color: Color.fromARGB(255, 24, 117, 194),
              )),
          Text(
            'فقُلْتُ اسْتَغْفِرُوا رَبَّكُمْ',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 237, 155, 248), fontSize: 30),
          ),
          SizedBox(height: 400),
          Text(
            'Do you like my App?',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 141, 10, 10), fontSize: 20),
          ),
          InkWell(
            child: Icon(
              Icons.favorite,
              color: heartColor,
              size: 80,
            ),
            onTap: () {
              setState(() {
                if (heartColor == Colors.red)
                  heartColor = Colors.black;
                else
                  heartColor = Colors.red;
              });
            },
          )
        ],
      )),
    );
  }
}
