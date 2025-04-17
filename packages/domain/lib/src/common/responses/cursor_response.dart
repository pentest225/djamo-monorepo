import 'package:domain/src/_core/_core.dart';

class CursorResponse extends BaseModel {
  const CursorResponse({
    required this.next,
    required this.prev,
  });

  factory CursorResponse.fromJson(Map<String, dynamic> json) {
    return CursorResponse(
      next: DP.asString(json['next']),
      prev: DP.asString(json['prev']),
    );
  }

  final String next;
  final String prev;

  @override
  Map<String, dynamic> toJson() {
    return {
      'next': next,
      'prev': prev,
    };
  }

  @override
  List<Object?> get props => [
        next,
        prev,
      ];
}

extension CursorResponseExtension on CursorResponse {}
