import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  int currentIndex = 0;

  List pages = [AsosiyPage(), RasmPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      backgroundColor: Colors.teal,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10, left: 30, right: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            onTap: (misol) {
              setState(() {
                currentIndex = misol;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AsosiyPage extends StatelessWidget {
  const AsosiyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            print("Mirzarahim");
          },
          child: Text("Button"),
        ),
        GestureDetector(
          onDoubleTap: () {
            print("2 x Bosildi");
          },
          child: Text("Button"),
        ),
        GestureDetector(
          onLongPress: () {
            print("Long Bosildi");
          },
          child: Text("Button"),
        ),
        Row(
          children: [Expanded(child: Container(height: 50, color: Colors.red))],
        ),
        Row(
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ],
        ),
      ],
    );
  }
}

class RasmPage extends StatelessWidget {
  const RasmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/brodar.jpg');
  }
}
