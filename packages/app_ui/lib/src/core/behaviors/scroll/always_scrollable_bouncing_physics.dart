import 'package:flutter/material.dart';

class AlwaysScrollableBouncingPhysics extends BouncingScrollPhysics {
  const AlwaysScrollableBouncingPhysics() : super(parent: const AlwaysScrollableScrollPhysics());
}
