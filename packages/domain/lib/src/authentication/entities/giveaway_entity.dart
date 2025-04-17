import 'package:domain/src/_core/_core.dart';

class GiveawayEntity extends BaseEntity {
  const GiveawayEntity({
    this.nextDepositIsFree = false,
    this.nextTransferIsFree = false,
    this.nextCashbackGiveaway = const {},
    this.nextDepositIsFreeExpireDate = emptyString,
    this.nextTransferIsFreeExpireDate = emptyString,
    this.nextCashbackGiveawayExpireDate = emptyString,
    this.nextDepositIsFreeCount = 0,
    this.nextTransferIsFreeCount = 0,
    this.nextCashbackGiveawayCount = 0,
  });

  final bool nextDepositIsFree;
  final bool nextTransferIsFree;
  final Map<String, dynamic> nextCashbackGiveaway;
  final String nextDepositIsFreeExpireDate;
  final String nextTransferIsFreeExpireDate;
  final String nextCashbackGiveawayExpireDate;
  final num nextDepositIsFreeCount;
  final num nextTransferIsFreeCount;
  final num nextCashbackGiveawayCount;

  static const empty = GiveawayEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        nextDepositIsFree,
        nextTransferIsFree,
        nextCashbackGiveaway,
        nextDepositIsFreeExpireDate,
        nextTransferIsFreeExpireDate,
        nextCashbackGiveawayExpireDate,
        nextDepositIsFreeCount,
        nextTransferIsFreeCount,
        nextCashbackGiveawayCount,
      ];
}

extension GiveawayEntityExtension on GiveawayEntity {
  DateTime? get getNextDepositIsFreeExpireDate {
    return DateTime.tryParse(nextDepositIsFreeExpireDate);
  }

  DateTime? get getNextTransferIsFreeExpireDate {
    return DateTime.tryParse(nextTransferIsFreeExpireDate);
  }

  DateTime? get getNextCashbackGiveawayExpireDate {
    return DateTime.tryParse(nextCashbackGiveawayExpireDate);
  }

  num get getCashbackPercentage {
    return num.tryParse('${nextCashbackGiveaway['percentage']}') ?? 0;
  }

  bool get containsFreeDeposit {
    return nextDepositIsFree && (getNextDepositIsFreeExpireDate == null || getNextDepositIsFreeExpireDate!.isAfter(DateTime.now()));
  }

  bool get containsFreeTransfer {
    return nextTransferIsFree && (getNextTransferIsFreeExpireDate == null || getNextTransferIsFreeExpireDate!.isAfter(DateTime.now()));
  }

  bool get containsFreeCashback {
    return nextCashbackGiveaway.isNotEmpty && getCashbackPercentage > 0 && (getNextCashbackGiveawayExpireDate == null || getNextCashbackGiveawayExpireDate!.isAfter(DateTime.now()));
  }
}
