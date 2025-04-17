import 'package:domain/src/_core/_core.dart';

class OrderProductEntity extends BaseEntity {
  const OrderProductEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.identifier = emptyString,
  });

  final String id;
  final String name;
  final String identifier;

  static const empty = OrderProductEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        identifier,
      ];
}

extension OrderProductEntityExtension on OrderProductEntity {}
