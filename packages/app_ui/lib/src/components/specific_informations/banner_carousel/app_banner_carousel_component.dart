import 'dart:async';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppBannerCarouselComponent extends StatefulWidget {
  const AppBannerCarouselComponent({
    required this.controller,
    required this.items,
    super.key,
    this.onChanged,
    this.height,
    this.autoPlay = true,
    this.autoPlayDuration = const Duration(seconds: 25),
    this.infiniteScroll = true,
    this.padding,
  });
  final PageController controller;

  ///Prefer list of [AppBannersComponent]
  final List<Widget> items;
  final void Function(int index)? onChanged;
  final double? height;
  final bool autoPlay;
  final Duration autoPlayDuration;
  final bool infiniteScroll;
  final EdgeInsets? padding;

  @override
  State<AppBannerCarouselComponent> createState() => _AppBannerCarouselComponentState();
}

class _AppBannerCarouselComponentState extends State<AppBannerCarouselComponent> {
  Timer? _gestureTimer;
  Timer? _timer;

  int _currentSlideIndex = 0;
  int _realIndex = 0;

  void _onAutoPlay() {
    if (!widget.autoPlay) return;
    _timer?.cancel();
    _timer = Timer.periodic(
      widget.autoPlayDuration,
      (_) {
        final nextIndex = _realIndex + 1;
        if (!widget.infiniteScroll && nextIndex >= widget.items.length) {
          widget.controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 600),
            curve: Curves.decelerate,
          );
        } else {
          widget.controller.animateToPage(
            nextIndex,
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  void _onPointerUp() {
    _timer?.cancel();
    _gestureTimer?.cancel();
    _gestureTimer = Timer(
      const Duration(milliseconds: 800),
      _onAutoPlay,
    );
  }

  void _onPointerDown() {
    _timer?.cancel();
    _gestureTimer?.cancel();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _onAutoPlay();
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _gestureTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: widget.height ?? AppSizes.h.custom(450),
            child: PageView.builder(
              controller: widget.controller,
              itemCount: widget.infiniteScroll ? null : widget.items.length,
              itemBuilder: (context, index) {
                final i = widget.infiniteScroll ? index % widget.items.length : index;
                return Listener(
                  key: ValueKey(i),
                  onPointerDown: (_) {
                    _onPointerDown();
                  },
                  onPointerUp: (_) {
                    _onPointerUp();
                  },
                  child: Padding(
                    padding: widget.padding ?? AppPaddings.s16.horizontal,
                    child: widget.items[i],
                  ),
                );
              },
              onPageChanged: (index) {
                final i = widget.infiniteScroll ? index % widget.items.length : index;
                setState(() {
                  _currentSlideIndex = i;
                  _realIndex = index;
                });
                widget.onChanged?.call(i);
              },
            ),
          ),
          AppGaps.ver.s12,
          AppSliderIndicatorComponent(
            currentSlideIndex: _currentSlideIndex,
            totalSteps: widget.items.length,
          ),
        ],
      ),
    );
  }
}
