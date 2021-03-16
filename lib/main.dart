// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Demo App',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: SimpleTab(),
//     );
//   }
// }

// class CustomTab {
//   const CustomTab({this.title, this.color});

//   final String title;
//   final Color color;
// }

// class SimpleTab extends StatefulWidget {
//   @override
//   _SimpleTabState createState() => _SimpleTabState();
// }

// class _SimpleTabState extends State<SimpleTab>
//     with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//   }

//   String selectedContainer = "";
//   var data = [
//     {
//       'name2': 'assets/images/logo_main.png',
//       'icon': Icons.local_shipping,
//     },
//     {
//       'name2': 'assets/images/logo_main.png',
//       'icon': Icons.local_shipping,
//     },
//     {
//       'name2': 'assets/images/logo_main.png',
//       'icon': Icons.local_shipping,
//     },
//     {
//       'name2': 'assets/images/logo_main.png',
//       'icon': Icons.local_shipping,
//     },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.room_service,
//     // },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.hotel,
//     // },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.more,
//     // },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.add_to_photos,
//     //   'submenu': ["Action8", "Action9"]
//     // },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.add_to_photos,
//     //   'submenu': ["Action10", "Action11"]
//     // },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.add_to_photos,
//     // },
//     // {
//     //   'item': 'assets/images/logo_main.png',
//     //   'icon': Icons.add_to_photos,
//     // },
//   ];

//   @override
//   Widget build(BuildContext context) {
// //    selectedContainer = "";
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: Stack(
//         children: <Widget>[
//           // SingleChildScrollView(
//           //   child: Column(
//           //     mainAxisAlignment: MainAxisAlignment.center,
//           //     children: <Widget>[],
//           //   ),
//           // ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: bottomBar(data),
//           )
//         ],
//       ),
//     );
//   }

//   Widget bottomBar(data) {
//     return new Container(
//         margin: EdgeInsets.only(bottom: 10),
//         constraints: new BoxConstraints(
//           minHeight: 40.0,
//           maxHeight: 140.0,
//         ),
//         color: Colors.transparent,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Expanded(
//               child: new ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: data
//                     .map<Widget>((e) => Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             GestureDetector(
//                               child: new Container(
//                                 color: Colors.transparent,
//                                 margin: EdgeInsets.only(right: 20, left: 4),
//                                 child: new LayoutBuilder(
//                                     builder: (context, constraint) {
//                                   String img = 'assets/images/logo_main.png';
//                                   print(e['name2']);
//                                   return Column(
//                                     children: [
//                                       CircleAvatar(
//                                         backgroundImage: AssetImage(
//                                           e['name2'],
//                                         ),
//                                       ),
//                                       // new Icon(
//                                       //   e['icon'],
//                                       //   size: 12.0,
//                                       //   color: selectedContainer != e['name']
//                                       //       ? Colors.grey
//                                       //       : Colors.green,
//                                       // )
//                                     ],
//                                   );
//                                 }),
//                               ),
//                               onTap: () {
//                                 setState(() {
//                                   if (selectedContainer == e['name']) {
//                                     selectedContainer = '';
//                                   } else {
//                                     selectedContainer = e['name'];
//                                   }
//                                 });
//                               },
//                             ),
//                           ],
//                         ))
//                     .toList(),
//               ),
//             )
//           ],
//         ));
//   }
// }

import 'package:ae_funai/screens/home.dart';
import 'package:ae_funai/screens/selected_election_screen.dart';
import 'package:ae_funai/screens/vote_candidate.dart';
import 'package:flutter/material.dart';
import 'package:ae_funai/screens/tabs_screen.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  runApp(new MyApp());
  // });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    print('Am main.dart');
    return MaterialApp(
      title: 'AE-FUNAI Elect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: Color(0xFFC0F0E8),
          // primaryColor: Color(0xFF200371),
          primaryColor: Color(0xFF010c28),
          fontFamily: "Montserrat",
          canvasColor: Colors.transparent),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (ctx) => Home(),
        SelectedElectionScreen.routeName: (ctx) => SelectedElectionScreen(),
        VoteCandidate.routeName: (ctx) => VoteCandidate(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
      },
    );
  }
}
