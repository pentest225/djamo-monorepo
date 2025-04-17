import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/support/models/models.dart';

class SupportSectionsResponse extends BaseResponse {
  const SupportSectionsResponse({
    required this.data,
  });

  factory SupportSectionsResponse.fromJson(Map<String, dynamic> json) {
    return SupportSectionsResponse(
      data: DP.asListOf<JsonMap>(json['data']).map(SupportSectionModel.fromJson).toList(),
    );
  }

  final List<SupportSectionModel> data;

  @override
  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        data,
      ];
}

extension SupportSectionsResponseResponseDomainExtension on SupportSectionsResponse {}
