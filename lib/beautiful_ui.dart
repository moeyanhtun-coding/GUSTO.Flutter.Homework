import 'package:flutter/material.dart';

class BeautifulUi extends StatelessWidget {
  const BeautifulUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: _header(),
        ),
        body: _buildUI(),
      ),
    );
  }

  Widget _buildUI() {
    return Container(
      color: const Color.fromARGB(255, 244, 89, 141),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _imageCircle(
              "https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg"),
          _sizeBoxHeight(20),
          _containerBox(Icons.phone_callback_outlined, 10, "+95987895444"),
          _sizeBoxHeight(20),
          _containerBox(Icons.mail, 10, "moeyan227970@gmail.com"),
        ],
      ),
    );
  }

  Widget _header() {
    return const Center(
      child: Text(
        "Beautiful UI Testing",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
      ),
    );
  }

  Widget _containerBox(IconData icon, double size, String text) {
    return Container(
      width: double.infinity,
      height: 30,
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          _sizeBoxWidth(size),
          Text(text),
        ],
      ),
    );
  }

  Widget _sizeBoxWidth(double size) {
    return SizedBox(
      width: size,
    );
  }

  Widget _sizeBoxHeight(double size) {
    return SizedBox(
      height: size,
    );
  }

  Widget _imageCircle(String imgUrl) {
    return CircleAvatar(
      radius: 78,
      backgroundImage: NetworkImage(imgUrl),
    );
  }
}
