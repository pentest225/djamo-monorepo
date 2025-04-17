import 'dart:async';

import 'package:app_ui/src/components/buttons/buttons.dart';
import 'package:app_ui/src/components/cards/cards.dart';
import 'package:app_ui/src/components/specific_informations/slider_indicator/app_slider_indicator_component.dart';
import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/core/classes/app_asset_builder.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petit_extension/petit_extension.dart';

part '_offer_component.dart';
part '_offer_item.dart';

class AppOfferPresentationComponent extends StatefulWidget {
  const AppOfferPresentationComponent({
    required this.offers,
    this.initialSelectedIndex,
    this.onOfferSelected,
    this.selectionCTALabel,
    super.key,
  });

  final int? initialSelectedIndex;
  final List<UIOfferItem> offers;
  final void Function(UIOfferItem, int)? onOfferSelected;
  final String? selectionCTALabel;

  @override
  State<AppOfferPresentationComponent> createState() => _AppOfferPresentationComponentState();
}

class _AppOfferPresentationComponentState extends State<AppOfferPresentationComponent> with SingleTickerProviderStateMixin {
  Timer? _hapticFeedbackTimer;

  late final TabController _controller;
  late ValueNotifier<int> _currentSelectedIndexNotifier;

  @override
  void initState() {
    _currentSelectedIndexNotifier = ValueNotifier(widget.initialSelectedIndex ?? 0);
    _controller = TabController(
      initialIndex: _currentSelectedIndexNotifier.value,
      length: widget.offers.length,
      vsync: this,
    )..addListener(
        () {
          _currentSelectedIndexNotifier.value = _controller.index;
          _hapticFeedbackTimer?.cancel();
          _hapticFeedbackTimer = Timer(
            const Duration(milliseconds: 300),
            HapticFeedback.selectionClick,
          );
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _currentSelectedIndexNotifier.dispose();
    _hapticFeedbackTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final offers = widget.offers;
    final count = offers.length;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          physics: const NeverScrollableScrollPhysics(),
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          dividerColor: Colors.transparent,
          controller: _controller,
          labelPadding: EdgeInsets.zero,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          labelStyle: context.theme.textTheme.titleMedium?.copyWith(
            color: context.customColorScheme.content,
          ),
          unselectedLabelStyle: context.theme.textTheme.titleMedium?.copyWith(
            color: context.customColorScheme.contentLowest,
          ),
          indicator: BoxDecoration(
            borderRadius: AppBorderRadius.s28.all,
            border: Border.all(color: context.customColorScheme.outlineLow),
          ),
          tabs: offers.map((offer) {
            return Padding(
              padding: AppPaddings.s24.horizontal,
              child: Tab(text: offer.name),
            );
          }).toList(),
          onTap: (index) {
            _controller.animateTo(index);
          },
        ),
        AppGaps.ver.s16,
        Expanded(
          child: AppCardComponent(
            borderColor: context.customColorScheme.outlineLow,
            backgroundColor: context.customColorScheme.primaryContainerLowest,
            borderRadius: AppBorderRadius.s28.all,
            contentPadding: AppPaddings.zero.all,
            content: TabBarView(
              controller: _controller,
              children: offers.mapIndexed((index, offer) {
                return Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: _OfferComponent(offer: offer),
                      ),
                    ),
                    if (offer.isSelectable)
                      Padding(
                        padding: AppPaddings.s16.symmetric,
                        child: AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
                          label: widget.selectionCTALabel ?? context.l10n.continueLabel,
                          onPressed: () {
                            final index = _currentSelectedIndexNotifier.value;
                            widget.onOfferSelected?.call(widget.offers[index], index);
                          },
                        ),
                      ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
        AppGaps.ver.s12,
        Align(
          child: ValueListenableBuilder(
            valueListenable: _currentSelectedIndexNotifier,
            builder: (context, value, __) {
              return AppSliderIndicatorComponent(
                currentSlideIndex: value,
                totalSteps: count,
              );
            },
          ),
        ),
      ],
    );
  }
}
