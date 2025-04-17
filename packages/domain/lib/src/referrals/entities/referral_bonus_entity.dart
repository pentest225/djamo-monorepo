import 'package:domain/src/_core/_core.dart';

class ReferralBonusEntity extends BaseEntity {
  const ReferralBonusEntity({
    this.bonus = 0,
    this.count = 0,
    this.ranking = 0,
    this.clients = const [],
  });

  final int bonus;
  final int count;
  final int ranking;
  final List<JsonMap> clients;

  static const empty = ReferralBonusEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        bonus,
        count,
        ranking,
        clients,
      ];
}

extension ReferralBonusEntityExtension on ReferralBonusEntity {}
