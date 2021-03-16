import 'package:ae_funai/providers/elections_provider.dart';
import 'package:ae_funai/widgets/election_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OngoingElectionScreen extends StatelessWidget {
  //final GlobalKey _scaffoldKey = new GlobalKey<ScaffoldState>();
  // static const routeName = '/election';

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
        child: ListViewHolder(eState: 'OGE'),
      ),
    );
  }
}

class ListViewHolder extends StatelessWidget {
  final String eState;
  ListViewHolder({@required this.eState});

  @override
  Widget build(BuildContext context) {
    final electionData = Provider.of<Elections>(context);
    final elections = electionData.elections(eState);
    return ListView.builder(
      itemCount: elections.length,
      itemBuilder: (ctx, position) {
        return ElectionItem(
          electionId: elections[position].electionId,
          electionName: elections[position].electionName,
          electionType: elections[position].electionType,
        );
      },
    );
  }
}
