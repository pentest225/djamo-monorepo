import 'package:domain/domain.dart';

typedef LoansScoreCriteriaEntities = List<LoanScoreCriteriaEntity>;

class LoanScoreCriteriaEntity extends BaseEntity {
  const LoanScoreCriteriaEntity({
    this.title = emptyString,
    this.description = emptyString,
    this.icon = emptyString,
    this.value = 0.0,
    this.valueCoefficient = 0.0,
    this.componentType = emptyString,
    this.remainingDate = emptyString,
    this.body = emptyString,
    this.tooltipTitle = emptyString,
    this.tooltipBody = emptyString,
    this.isActiveTooltip = false,
  });

  final String title;
  final String description;
  final String icon;
  final double value;
  final double valueCoefficient;
  final String componentType;
  final String remainingDate;
  final String body;
  final String tooltipTitle;
  final String tooltipBody;
  final bool isActiveTooltip;

  static const empty = LoanScoreCriteriaEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        title,
        description,
        icon,
        value,
        valueCoefficient,
        componentType,
        remainingDate,
        body,
        tooltipTitle,
        tooltipBody,
        isActiveTooltip,
      ];
}

extension LoanScoreCriteriaEntityDomainExtension on LoanScoreCriteriaEntity {
  LoanTooltipTypeEnum get tooltipType => LoanTooltipTypeEnum.fromIdentifier(componentType);

  bool get isGreenTooltip => tooltipType.isGreen;

  bool get isYellowTooltip => tooltipType.isYellow;

  bool get isRedTooltip => tooltipType.isRed;
}
