import 'package:ae_funai/components/constants.dart';
import 'package:ae_funai/widgets/outlined_button.dart';
import 'package:flutter/material.dart';

class VoteCandidate extends StatelessWidget {
  static const routeName = '/vote-candidate';

  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final name = _routeArgs['name'];

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: kSecondPrimaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 86.0,
                  backgroundImage: AssetImage('assets/images/passport.jpg'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Electronic Engineering',
                    style: TextStyle(
                      color: Colors.teal.shade100,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 250.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.question_answer,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'I can do all things through Christ that strenghtens me. --Rabbai',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'chukwudiokolo1543@gmail.com',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                OutlineButtonCustomized(
                  title: "Vote",
                  function: () {
                    print('Am Voting');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
