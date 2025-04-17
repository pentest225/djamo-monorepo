import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/entities/entities.dart';

class PhoneNumberResetEntity extends BaseEntity {
  const PhoneNumberResetEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.deletedAt = emptyString,
    this.isActive = false,
    this.searchableText = emptyString,
    this.trials = 0,
    this.code = emptyString,
    this.isVerified = false,
    this.type = emptyString,
    this.phoneNumber = PhoneNumberEntity.empty,
  });

  final String id;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final bool isActive;
  final String searchableText;
  final int trials;
  final String code;
  final bool isVerified;
  final String type;
  final PhoneNumberEntity phoneNumber;

  static const empty = PhoneNumberResetEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        deletedAt,
        isActive,
        searchableText,
        trials,
        code,
        isVerified,
        type,
        phoneNumber,
      ];
}

extension PhoneNumberResetEntityExtension on PhoneNumberResetEntity {}
