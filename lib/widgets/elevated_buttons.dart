import 'package:flutter/material.dart';

class ElevatedButtonsR extends StatelessWidget {
  ElevatedButtonsR({
    this.text,
    this.splashColor,
    this.highlightColor,
    this.fillColor,
    this.textColor,
    this.function,
  });

  final String text;
  final Color splashColor;
  final Color highlightColor;
  final Color fillColor;
  final Color textColor;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: fillColor,
        elevation: 0.0,
        shadowColor: highlightColor,
        onPrimary: splashColor,
        onSurface: splashColor,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
      ),
      onPressed: () {
        function();
      },
    );
  }
}
