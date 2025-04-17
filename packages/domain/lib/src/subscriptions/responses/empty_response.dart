import 'package:domain/src/_core/_core.dart';

class EmptyResponse extends BaseModel {
  const EmptyResponse({
    required this.data,
  });

  factory EmptyResponse.fromJson() {
    return const EmptyResponse(
      data: '',
    );
  }

  final String data;

  @override
  Map<String, dynamic> toJson() {
    return {
      'data': data,
    };
  }

  @override
  List<Object?> get props => [
        data,
      ];
}

extension EmptyResponseExtension on EmptyResponse {}
