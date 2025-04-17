import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';

class BankServicesObject extends Equatable {
  const BankServicesObject({
    required GroupedBankServiceEntities<String> transfer,
    required GroupedBankServiceEntities<BankFeesStrategyTypeEnum> deposit,
  })  : _transfer = transfer,
        _deposit = deposit;

  final GroupedBankServiceEntities<String> _transfer;
  final GroupedBankServiceEntities<BankFeesStrategyTypeEnum> _deposit;

  BankServicesObject copyWith({
    GroupedBankServiceEntities<String>? transfer,
    GroupedBankServiceEntities<BankFeesStrategyTypeEnum>? deposit,
  }) {
    return BankServicesObject(
      transfer: transfer ?? _transfer,
      deposit: deposit ?? _deposit,
    );
  }

  GroupedBankServiceEntities<String> get transfer => _transfer;
  GroupedBankServiceEntities<BankFeesStrategyTypeEnum> get deposit => _deposit;

  BankServiceEntities getBanksForTransfer() {
    if (_transfer.isEmpty) return [];
    return _transfer.values.expand((list) => list).toList();
  }

  BankServiceEntities get getBanksForDeposit {
    if (_deposit.isEmpty) return [];
    return _deposit.values.expand((list) => list).toList();
  }

  static const empty = BankServicesObject(transfer: {}, deposit: {});

  @override
  List<Object?> get props => [
        _transfer,
        _deposit,
      ];
}
