import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: _header(),
        ),
        body: _buildUI(),
      ),
    );
  }

  Widget _buildUI() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _containerBox(Colors.white, "White Color", Colors.black),
          Row(
            children: [
              Expanded(
                  child: _containerBox(
                      Colors.orange, "Orange Text", Colors.black)),
              Expanded(
                  child: _containerBox(
                      Colors.yellow, "Yellow Text", Colors.black)),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child:
                      _containerBox(Colors.green, "Green Text", Colors.black)),
              Expanded(
                  child:
                      _containerBox(Colors.black, "Yellow Text", Colors.white))
            ],
          ),
          _containerBox(Colors.white, "White Color", Colors.blue),
        ],
      ),
    );
  }

  Widget _containerBox(Color color, String name, Color textColor) {
    return Container(
      color: color,
      height: 180,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return const Center(
      child: Text(
        "Welcom Text",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
