import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class ProfileIdEntity extends BaseEntity {
  const ProfileIdEntity({
    this.frontPage = emptyString,
    this.backPage = emptyString,
  });

  final String frontPage;
  final String backPage;

  static const empty = ProfileIdEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [frontPage, backPage];
}

extension ProfileIdEntityExtension on ProfileIdEntity {
  List<String> get values => [frontPage, backPage];
  bool get hasAtLeastDocument => values.any((element) => element.isValidUrl);
}
