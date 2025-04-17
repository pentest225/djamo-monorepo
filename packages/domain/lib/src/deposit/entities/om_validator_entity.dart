import 'package:domain/src/_core/_core.dart';

class OmValidatorEntity extends BaseEntity {
  const OmValidatorEntity({
    this.result = emptyString,
    this.message = emptyString,
  });

  final String result;
  final String message;

  static const empty = OmValidatorEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        result,
        message,
      ];
}

extension OmValidatorEntityExtension on OmValidatorEntity {}
