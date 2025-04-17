import 'package:domain/src/_core/_core.dart';

class GetCitiesPayload extends BasePayload {
  const GetCitiesPayload({
    required this.marketId,
  });

  final String marketId;

  Map<String, dynamic> toJson() {
    return {
      'marketId': marketId,
    };
  }

  @override
  List<Object?> get props => [
        marketId,
      ];
}
