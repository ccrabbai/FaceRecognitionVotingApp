import 'package:ae_funai/components/constants.dart';
import 'package:flutter/material.dart';

class OutlineButtonCustomized extends StatelessWidget {
  const OutlineButtonCustomized(
      {@required this.title, @required this.function});

  final Function function;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Container(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: kWhite,
            backgroundColor: kPrimaryColor,
            elevation: 0.0,
            shadowColor: kWhite,
            onSurface: kWhite,
            side: BorderSide(color: Colors.white, width: 2.0),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            // _registerSheet();
            function();
          },
        ),
        height: 50,
      ),
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
    );
  }
}
