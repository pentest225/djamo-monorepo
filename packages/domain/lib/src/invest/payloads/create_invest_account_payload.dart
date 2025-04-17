import 'dart:io';

import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class CreateInvestAccountPayload extends BasePayload {
  const CreateInvestAccountPayload({
    required this.maritalStatus,
    required this.placeOfBirth,
    required this.professionalSituation,
    required this.profession,
    required this.activitySector,
    required this.financialKnowledge,
    required this.mainGoal,
    required this.investmentHorizon,
    required this.firstSignature,
    required this.secondSignature,
  });

  factory CreateInvestAccountPayload.fromForm(
    Map<String, dynamic> form, {
    File? firstSignature,
    File? secondSignature,
  }) {
    return CreateInvestAccountPayload(
      maritalStatus: DP.asString(form['maritalStatus']),
      placeOfBirth: DP.asString(form['placeOfBirth']),
      professionalSituation: DP.asString(form['professionalSituation']),
      profession: DP.asString(form['profession']),
      activitySector: DP.asString(form['activitySector']),
      financialKnowledge: DP.asString(form['financialKnowledge']),
      mainGoal: DP.asString(form['mainGoal']),
      investmentHorizon: DP.asString(form['investmentHorizon']),
      firstSignature: firstSignature,
      secondSignature: secondSignature,
    );
  }

  final String maritalStatus;
  final String placeOfBirth;
  final String professionalSituation;
  final String profession;
  final String activitySector;
  final String financialKnowledge;
  final String mainGoal;
  final String investmentHorizon;
  final File? firstSignature;
  final File? secondSignature;

  bool get hasSignatures => firstSignature != null && secondSignature != null;

  Map<String, dynamic> toJson() {
    return {
      'maritalStatus': maritalStatus.orNull ?? 'N/A',
      'placeOfBirth': placeOfBirth.orNull ?? 'N/A',
      'professionalSituation': professionalSituation.orNull ?? 'N/A',
      'profession': profession.orNull ?? 'N/A',
      'activitySector': activitySector.orNull ?? 'N/A',
      'financialKnowledge': financialKnowledge.orNull ?? 'N/A',
      'mainGoal': mainGoal.orNull ?? 'N/A',
      'investmentHorizon': investmentHorizon.orNull ?? 'N/A',
    };
  }

  @override
  List<Object?> get props => [
        maritalStatus,
        placeOfBirth,
        professionalSituation,
        profession,
        activitySector,
        financialKnowledge,
        mainGoal,
        investmentHorizon,
        firstSignature,
        secondSignature,
      ];
}
