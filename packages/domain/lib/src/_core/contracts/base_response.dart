import 'package:equatable/equatable.dart';

///
abstract class BaseResponse extends Equatable {
  ///
  const BaseResponse();

  ///
  Map<String, dynamic> toJson();
}
