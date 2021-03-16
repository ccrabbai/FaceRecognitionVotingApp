import 'package:ae_funai/components/constants.dart';
import 'package:ae_funai/widgets/elevated_buttons.dart';
import 'package:ae_funai/widgets/input_fields.dart';
import 'package:flutter/material.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    @required this.emailController,
    @required this.passwordController,
    @required this.primaryColor,
    @required this.function,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Color primaryColor;
  final Function function;

  @override
  Widget build(BuildContext context) {
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
                        },
                        icon: Icon(
                          Icons.close,
                          size: 30.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                height: 50,
                width: 50,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Align(
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).primaryColor),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Positioned(
                            child: Container(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 60),
                      child: InputFields(
                          Icon(Icons.email), "EMAIL", emailController, false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: InputFields(Icon(Icons.lock), "PASSWORD",
                          passwordController, true),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        child: ElevatedButtonsR(
                          text: "LOGIN",
                          splashColor: Colors.white,
                          highlightColor: kPrimaryColor,
                          fillColor: kPrimaryColor,
                          textColor: Colors.white,
                          function: function, //_loginSheet,
                        ),
                        // child: ElevatedButtonsR("LOGIN", Colors.white,
                        //     primary, primary, Colors.white, _loginUser),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          height: MediaQuery.of(context).size.height / 1.1,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
    );
  }
}
