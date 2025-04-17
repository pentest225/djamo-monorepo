import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part '_builder.dart';

class InfoCardItem extends Equatable {
  const InfoCardItem({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  final String label;
  final String value;
  final bool isBold;

  @override
  List<Object> get props => [label, value, isBold];
}

abstract class AppInfoCardComponent extends StatelessWidget {
  const AppInfoCardComponent({
    required this.info,
    super.key,
  });

  const factory AppInfoCardComponent.medium({
    required List<InfoCardItem> info,
    Key? key,
  }) = _Medium;

  const factory AppInfoCardComponent.prominent({
    required List<InfoCardItem> info,
    Key? key,
  }) = _Prominent;

  final List<InfoCardItem> info;
}
