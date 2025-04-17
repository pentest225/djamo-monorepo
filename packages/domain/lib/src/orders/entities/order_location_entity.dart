import 'package:domain/src/_core/_core.dart';

class OrderLocationEntity extends BaseEntity {
  const OrderLocationEntity({
    this.id = emptyString,
    this.name = emptyString,
  });

  final String id;
  final String name;

  static const empty = OrderLocationEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}

extension OrderLocationEntityExtension on OrderLocationEntity {}
