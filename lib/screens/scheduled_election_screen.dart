import 'package:flutter/material.dart';
import 'ongoing_election_screen.dart' show ListViewHolder;

class ScheduledElectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2.0),
      color: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.only(top: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Color(0XFF011b3b),
        ),
        child: ListViewHolder(eState: 'SE'),
        // child: ListView(
        //   children: DUMMY_SE
        //       .map(
        //         (electionData) => ElectionItem(
        //           electionType: electionData.electionType,
        //           electionName: electionData.electionName,
        //         ),
        //       )
        //       .toList(),
        // ),
      ),
    );
  }
}
