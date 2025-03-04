import 'package:flutter/material.dart';

class ComponenetButton extends StatelessWidget {
  final Key? key;
  final String Label;
  final VoidCallback onPress;
  final Color? bgcolor;
  final Key? checkButn;

  ComponenetButton(
      {this.key,
      required this.Label,
      required this.onPress,
      this.bgcolor,
      this.checkButn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          key: checkButn,
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
              backgroundColor: bgcolor ?? Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: Text(
            Label,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
