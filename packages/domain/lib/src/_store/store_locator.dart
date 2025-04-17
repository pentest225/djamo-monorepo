import 'package:di/di.dart';
import 'package:domain/src/_store/domain_store.dart';

///
DomainStore get store {
  return sl<DomainStore>();
}
