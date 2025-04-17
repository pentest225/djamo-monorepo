import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/markets/enums/enums.dart';

class GetLocationByCityPayload extends BasePayload {
  const GetLocationByCityPayload({
    required this.cityId,
    required this.category,
    required this.type,
  });

  final String cityId;
  final LocationCategoryEnum category;
  final LocationTypeEnum type;

  Map<String, dynamic> toJson() {
    return {
      //'cityId': cityId,
      '_order': 'asc',
      if (!category.isNone) 'category': category.key,
      if (!type.isNone) 'type': type.key,
    };
  }

  @override
  List<Object?> get props => [
        cityId,
        category,
        type,
      ];
}
