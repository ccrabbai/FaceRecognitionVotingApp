import 'package:flutter/material.dart';
import 'package:ae_funai/components/clipper.dart';
import 'package:ae_funai/widgets/elevated_buttons.dart';
import 'package:ae_funai/components/logo.dart';
import 'package:ae_funai/widgets/outlined_button.dart';
import 'package:ae_funai/login-and-register/login_bottom_sheet.dart';
import 'package:ae_funai/login-and-register/register_bottom_sheet.dart';
import 'package:ae_funai/screens/tabs_screen.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  String _email;
  String _password;
  String _displayName;
  bool _obsecure = false;

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;

    // login and register fuctions
    void _loginUser() {
      _email = _emailController.text;
      _password = _passwordController.text;
      _emailController.clear();
      _passwordController.clear();

      Navigator.of(context).pushNamed(
        TabsScreen.routeName,
      );
    }

    void _loginSheet() {
      Color primary = Theme.of(context).primaryColor;
      _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
        return LoginBottomSheet(
          emailController: _emailController,
          passwordController: _passwordController,
          primaryColor: primary,
          function: _loginUser,
        );
      });
    }

    void _registerUser() {
      _email = _emailController.text;
      _password = _passwordController.text;
      _displayName = _nameController.text;
      _emailController.clear();
      _passwordController.clear();
      _nameController.clear();

      _loginSheet();
    }

    void _registerSheet() {
      _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
        return RegisterBottomSheet(
          emailController: _emailController,
          passwordController: _passwordController,
          nameController: _nameController,
          function: _registerUser,
        );
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Logo(),
          Padding(
            child: Container(
              child: ElevatedButtonsR(
                text: "LOGIN",
                splashColor: primary,
                highlightColor: Colors.white,
                fillColor: Colors.white,
                textColor: primary,
                function: _loginSheet,
              ),
              height: 50,
            ),
            padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          ),
          OutlineButtonCustomized(
            title: 'REGISTER',
            function: _registerSheet,
          ),
          Expanded(
            child: Align(
              child: ClipPath(
                child: Container(
                  color: Colors.white,
                  height: 300,
                ),
                clipper: BottomWaveClipper(),
              ),
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
