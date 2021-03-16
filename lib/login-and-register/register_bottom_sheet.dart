import 'package:ae_funai/components/constants.dart';
import 'package:ae_funai/widgets/elevated_buttons.dart';
import 'package:ae_funai/widgets/input_fields.dart';
import 'package:flutter/material.dart';

enum Gender { MALE, FEMALE, OTHER }

class RegisterBottomSheet extends StatelessWidget {
  const RegisterBottomSheet({
    @required this.emailController,
    @required this.passwordController,
    @required this.nameController,
    @required this.function,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final Function function;

  //Gender _genderValue = Gender.MALE;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var _genderValue;
    return newMethod(context, screenSize, _genderValue);
  }

  DecoratedBox newMethod(BuildContext context, Size screenSize, _genderValue) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
        child: Container(
          child: ListView(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          emailController.clear();
                          passwordController.clear();
                          nameController.clear();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 30.0,
                          color: kPrimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                height: 50,
                width: 50,
              ),
              Form(
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    Container(
                      width: screenSize.width,
                      height: 70,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Align(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: kPrimaryColor,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Positioned(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              child: Text(
                                "REGISTRATION PAGE",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kWhite,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                        top: 20,
                      ),
                      child: InputFields(Icon(Icons.account_circle),
                          "ENTER NAME", nameController, false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: InputFields(
                          Icon(Icons.email), "EMAIL", emailController, false),
                    ),
                    ////////////////
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: InputFields(Icon(Icons.confirmation_number),
                          "REG. NUMBER", nameController, false),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextButton.icon(
                          label: const Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          icon: Radio(
                            value: Gender.MALE,
                            groupValue: _genderValue,
                            onChanged: (value) {
                              // setState(() {
                              //   _genderValue = value;
                              // });
                            },
                          ),
                          onPressed: () {
                            // setState(() {
                            //   _genderValue = Gender.MALE;
                            // });
                          },
                        ),
                        TextButton.icon(
                          label: const Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          icon: Radio(
                            value: Gender.FEMALE,
                            groupValue: _genderValue,
                            // onChanged: (Gender value) {
                            //   // setState(() {
                            //   //   _genderValue = value;
                            //   // });
                            // },
                            onChanged: (value) {
                              // setState(() {
                              //   _genderValue = value;
                              // });
                            },
                          ),
                          onPressed: () {
                            // setState(() {
                            //   _genderValue = Gender.FEMALE;
                            // });
                          },
                        ),
                      ],
                    ),
                    //////////////
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: InputFields(Icon(Icons.lock), "PASSWORD",
                          passwordController, true),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: InputFields(Icon(Icons.lock), "CONFIRM PASSWORD",
                          passwordController, true),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextButton.icon(
                        icon: Icon(
                          Icons.photo_camera,
                          size: 30,
                          color: kPrimaryColor,
                        ),
                        label: Text(
                          'Take a Snapshot',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        child: ElevatedButtonsR(
                          text: "REGISTER",
                          splashColor: kWhite,
                          highlightColor: kPrimaryColor,
                          fillColor: kPrimaryColor,
                          textColor: kWhite,
                          function: function, //_loginSheet,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
              ),
            ],
          ),
          height: screenSize.height / 1.1,
          width: screenSize.width,
          color: Colors.white,
        ),
      ),
    );
  }
}
