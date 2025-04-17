import 'package:domain/src/_core/_core.dart';

typedef LoanProductEntities = List<LoanProductEntity>;

class LoanProductEntity extends BaseEntity {
  const LoanProductEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.name = emptyString,
    this.description = emptyString,
    this.iconUrl = emptyString,
    this.externalId = emptyString,
    this.interestRateFrequencyType = emptyString,
    this.interestRatePerPeriod = 0.0,
    this.facilitationFeesRate = 0.0,
    this.disbursementFees = 0.0,
    this.repaymentEvery = 0.0,
    this.repaymentFrequencyType = emptyString,
  });

  final String id;
  final String createdAt;
  final String updatedAt;
  final String name;
  final String description;
  final String iconUrl;
  final String externalId;
  final String interestRateFrequencyType;
  final double interestRatePerPeriod;
  final double facilitationFeesRate;
  final double disbursementFees;
  final double repaymentEvery;
  final String repaymentFrequencyType;

  static const empty = LoanProductEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        name,
        description,
        iconUrl,
        externalId,
        interestRateFrequencyType,
        interestRatePerPeriod,
        facilitationFeesRate,
        disbursementFees,
        repaymentEvery,
        repaymentFrequencyType,
      ];
}

extension LoanProductEntityDomainExtension on LoanProductEntity {}
