import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            height: MediaQuery.of(context).size.height / 1.1,
            padding: EdgeInsets.only(top: 60.0),
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/passport.jpg'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Owen Rabbai',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'owerabbai46464@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade100,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
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
                  Column(
                    children: [
                      ListTile(
                        //tileColor: Colors.white,
                        title: Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 2.0,
                        child: Divider(
                          color: Colors.teal[100],
                          thickness: 1.0,
                        ),
                      ),
                      ListTile(
                        //tileColor: Colors.white,
                        title: Text(
                          "Election Archive",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 2.0,
                        child: Divider(
                          color: Colors.teal[100],
                          thickness: 1.0,
                        ),
                      ),
                      ListTile(
                        //tileColor: Colors.white,
                        title: Text(
                          "Logout",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 2.0,
                        child: Divider(
                          color: Colors.teal[100],
                          thickness: 1.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // UserAccountsDrawerHeader(
          //   accountName: Text("Ashish Rawat"),
          //   accountEmail: Text("ashishrawat2911@gmail.com"),
          //   currentAccountPicture: CircleAvatar(
          //     backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
          //         ? Colors.blue
          //         : Colors.white,
          //     child: Text(
          //       "A",
          //       style: TextStyle(fontSize: 40.0),
          //     ),
          //   ),
          // ),
          //
        ],
      ),
    );
  }
}
