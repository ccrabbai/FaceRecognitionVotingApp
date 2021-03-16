import 'package:flutter/material.dart';

class ElectionPosition {
  final String office;
  final String candidateId;
  final String candidatesName; // Map the candidate's id with their names
  final String
      candidatesImage; // Map the candidate's id with their images or image location
  final String candidatesDept; // Map the candidate's id with their departments
  final String candidatesQuote; // Map the candidate's id with their quotes
  final bool isDisqualified;

  const ElectionPosition({
    @required this.candidateId,
    @required this.candidatesDept,
    @required this.candidatesImage,
    @required this.candidatesName,
    @required this.candidatesQuote,
    @required this.office,
    @required this.isDisqualified,
  });
}
