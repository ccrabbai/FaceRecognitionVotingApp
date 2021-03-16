import 'package:flutter/material.dart';
import 'package:ae_funai/screens/vote_candidate.dart';

class SelectedElectionScreen extends StatelessWidget {
  static const routeName = '/selected-election';

  final data = [
    [
      {
        'name': 'Owen Rabbai',
        'img': 'assets/images/passport.jpg',
        'office': 'Presidency',
      },
      {
        'name': 'Mack Dan',
        'img': 'assets/images/passport.jpg',
        'office': 'Presidency',
      },
    ],
    [
      {
        'name': 'Queen Amadi',
        'img': 'assets/images/passport.jpg',
        'office': 'VP',
      },
      {
        'name': 'Princess Udoh',
        'img': 'assets/images/passport.jpg',
        'office': 'VP',
      },
      {
        'name': 'Okolo Precious',
        'img': 'assets/images/passport.jpg',
        'office': 'VP',
      }
    ],
    [
      {
        'name': 'Opi Mandible',
        'img': 'assets/images/passport.jpg',
        'office': 'Secretary',
      },
      {
        'name': 'HHHHH gfscgfhghjk',
        'img': 'assets/images/passport.jpg',
        'office': 'Secretary',
      }
    ],
    [
      {
        'name': 'Osapi Maxwell',
        'img': 'assets/images/passport.jpg',
        'office': 'PRO',
      },
      {
        'name': 'Gandule Aba',
        'img': 'assets/images/passport.jpg',
        'office': 'PRO',
      },
      {
        'name': 'Okoye Emma',
        'img': 'assets/images/passport.jpg',
        'office': 'PRO',
      }
    ]
  ];

  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final electionType = _routeArgs['electionType'];
    final electionName = _routeArgs['electionName'];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        // backgroundColor: Color(0xFF010c28),
        title: Text(
          '$electionType >> $electionName',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0XFF011b3b),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int position) {
            var da = data[position];
            print(da);
            return HorizontalRowScroll(data: da, office: da[0]['office']);
          },
          separatorBuilder: (BuildContext context, int index) => Divider(
            color: Colors.white70,
            height: 1.0,
            thickness: 1.0,
          ),
          itemCount: data.length,
        ),
      ),
    );
  }
}

class HorizontalRowScroll extends StatelessWidget {
  const HorizontalRowScroll({
    Key key,
    @required this.office,
    @required this.data,
  }) : super(key: key);

  final String office;
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      constraints: BoxConstraints(
        minHeight: 40.0,
        maxHeight: 190.0,
      ),
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              bottom: 10.0,
            ),
            child: Text(
              'Office of the $office',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: data
                  .map<Widget>(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            color: Colors.transparent,
                            margin: EdgeInsets.only(right: 20, left: 4),
                            child:
                                LayoutBuilder(builder: (context, constraint) {
                              print(e['name']);
                              return Container(
                                // height: 180.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 130,
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 50.0,
                                                    backgroundImage: AssetImage(
                                                      "assets/images/passport.jpg",
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5.0),
                                                    child: Text(
                                                      e['name'],
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            VerticalDivider(
                                              width: 0.1,
                                              color: Colors.white70,
                                              thickness: 0.2,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                          onTap: () {
                            print(e['name']);
                            Navigator.of(context)
                                .pushNamed(VoteCandidate.routeName, arguments: {
                              'name': e['name'],
                            });
                            // setState(() {
                            //   if (selectedContainer == e['name']) {
                            //     selectedContainer = '';
                            //   } else {
                            //     selectedContainer = e['name'];
                            //   }
                            //});
                          },
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
