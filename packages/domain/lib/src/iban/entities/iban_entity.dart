import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/iban/entities/iban_agency_entity.dart';

class IbanEntity extends BaseEntity {
  const IbanEntity({
    this.id = emptyString,
    this.accountNumber = emptyString,
    this.agency = IbanAgencyEntity.empty,
    this.iban = emptyString,
    this.ibanKey = emptyString,
    this.clientId = emptyString,
  });

  final String id;
  final String accountNumber;
  final IbanAgencyEntity agency;
  final String iban;
  final String ibanKey;
  final String clientId;

  static const empty = IbanEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        accountNumber,
        agency,
        iban,
        ibanKey,
        clientId,
      ];
}

extension IbanEntityExtension on IbanEntity {}
