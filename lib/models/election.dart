import 'package:flutter/material.dart';

class Election {
  final int electionId;
  final String electionType;
  final String electionName;
  final String electionSate;

  const Election({
    @required this.electionId,
    @required this.electionType,
    @required this.electionName,
    @required this.electionSate,
  });
}
