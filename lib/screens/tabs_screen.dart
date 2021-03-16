import 'package:ae_funai/providers/elections_provider.dart';
import 'package:ae_funai/widgets/main_drawer.dart';
import 'package:ae_funai/screens/completed_elections_screen.dart';
import 'package:ae_funai/screens/ongoing_election_screen.dart';
import 'package:ae_funai/screens/scheduled_election_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Elections(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AE-FUNAI Elect'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'ONGOING ELECTIONS',
                ),
                Tab(
                  icon: Icon(Icons.category),
                  text: 'SCHEDULED ELECTIONS',
                ),
                Tab(
                  icon: Icon(Icons.category),
                  text: 'COMPLETED ELECTIONS',
                )
              ],
            ),
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children: [
              OngoingElectionScreen(),
              ScheduledElectionScreen(),
              CompletedElectionScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
