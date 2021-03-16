import 'package:ae_funai/models/election.dart';
import 'package:flutter/foundation.dart';

class Elections with ChangeNotifier {
  List<Election> _elections = [
    Election(
      electionId: 1,
      electionType: 'University Election',
      electionName: 'SUG Election 2020',
      electionSate: 'OGE',
    ),
    Election(
      electionId: 2,
      electionType: 'Dept. Election',
      electionName: 'Political Science',
      electionSate: 'OGE',
    ),
    Election(
      electionId: 3,
      electionType: 'Faculty Election',
      electionName: 'Engineeering',
      electionSate: 'OGE',
    ),
    Election(
      electionId: 1,
      electionType: 'University Election',
      electionName: 'SUG Election 2020',
      electionSate: 'CE',
    ),
    Election(
      electionId: 2,
      electionType: 'Dept. Election',
      electionName: 'Political Science',
      electionSate: 'SE',
    ),
    Election(
      electionId: 3,
      electionType: 'Faculty Election',
      electionName: 'Engineeering',
      electionSate: 'SE',
    ),
  ];

  List<Election> elections(String eState) {
    List<Election> validElection = [];
    for (Election election in _elections) {
      if (election.electionSate == eState) {
        validElection.add(election);
      }
    }
    return validElection;
  }

  void addElection() {
    notifyListeners();
  }
}
