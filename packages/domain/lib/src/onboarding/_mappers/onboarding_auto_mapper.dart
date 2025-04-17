import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/onboarding/_mappers/onboarding_auto_mapper.auto_mappr.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([])
class OnboardingAutoMapper extends $OnboardingAutoMapper {
  const OnboardingAutoMapper();
}
