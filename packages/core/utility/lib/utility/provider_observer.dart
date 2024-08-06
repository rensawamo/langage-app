import 'package:core_utility/utility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderLogger implements ProviderObserver {
  const ProviderLogger();

  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    logger.i('[ADD]: ${provider.describe}');
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    logger.d('[DISPOSE]: ${provider.describe}');
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.i('[UPDATE]*: ${provider.describe}');
  }

  @override
  void providerDidFail(
    ProviderBase provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.e('[FAIL]: ${provider.describe}');
  }
}

extension _ProviderName on ProviderBase {
  String get describe => name ?? toString();
}
