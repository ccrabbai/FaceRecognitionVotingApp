// import 'package:ae_funai/screens/selected_election_screen.dart';
import 'package:ae_funai/components/constants.dart';
import 'package:ae_funai/screens/selected_election_screen.dart';
import 'package:flutter/material.dart';

class ElectionItem extends StatelessWidget {
  final int electionId;
  final String electionType;
  final String electionName;

  ElectionItem({
    this.electionType,
    this.electionName,
    this.electionId,
  });

  void selectedElection(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SelectedElectionScreen.routeName, arguments: {
      'electionType': electionType,
      'electionName': electionName,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.teal.shade600,
            child: ListTile(
              leading: Icon(
                Icons.wb_sunny,
                color: kWhite,
              ),
              title: Text(
                electionType,
                style: TextStyle(
                    color: kWhite,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                electionName,
                style: TextStyle(
                  color: kWhite,
                  fontFamily: "Montserrat",
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: kWhite,
              ),
              tileColor: kSecondPrimaryColor,
            ),
            onTap: () => selectedElection(context),
          ),
          Divider(
            color: kWhite,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
