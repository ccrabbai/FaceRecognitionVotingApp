import 'package:ae_funai/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFields extends StatelessWidget {
  InputFields(this.icon, this.hint, this.controller, this.obsecure);

  final Icon icon;
  final String hint;
  final bool obsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        controller: controller,
        obscureText: obsecure,
        style: TextStyle(
          fontSize: 24,
          color: kPrimaryColor,
        ),
        decoration: InputDecoration(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: kPrimaryColor,
            ),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              ),
            ),
            prefixIcon: Padding(
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).primaryColor),
                child: icon,
              ),
              padding: EdgeInsets.only(left: 30, right: 10),
            )),
      ),
    );
  }
}
