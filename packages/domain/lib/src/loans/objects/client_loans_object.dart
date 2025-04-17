import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ClientLoansObject extends Equatable {
  const ClientLoansObject({
    required LoanEntities recentLoans,
  }) : _recentLoans = recentLoans;

  final LoanEntities _recentLoans;

  LoanEntities get getLoans {
    return _recentLoans;
  }

  static const empty = ClientLoansObject(
    recentLoans: [],
  );

  @override
  List<Object> get props => [
        _recentLoans,
      ];
}
