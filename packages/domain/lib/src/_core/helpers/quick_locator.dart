import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/settings/objects/feature_flag_object.dart';

/// Get the feature flags
FeatureFlagObject get flags => store.settings.value<FeatureFlagObject>();
