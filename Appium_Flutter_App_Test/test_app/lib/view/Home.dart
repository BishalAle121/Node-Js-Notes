import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                key: ValueKey("ListView_Key"),
                children: [
                  Containsers(1),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(2),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(3),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(4),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(5),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(6),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(7),
                  SizedBox(
                    height: 40,
                  ),
                  Containsers(8),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Tooltip(
              message: "Tap to Naviage Next page",
              child:
                  ElevatedButton(onPressed: () {}, child: const Text("Next")),
            )
          ],
        ),
      ),
    );
  }
}

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'I am a Tooltip',
      child: Text('Hover over the text to show a tooltip.'),
    );
  }
}

Widget Containsers(int index) {
  return Container(
    height: 140,
    width: double.infinity,
    color: Colors.blueAccent,
    child: Center(
        child: Text(
      key: ValueKey(index),
      "Index: ${index}",
      style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
    )),
  );
}
