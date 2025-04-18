/// Returns true if the app is running in a development environment.
bool get isStaging => const String.fromEnvironment('APP_ENV') == 'staging';

/// Returns true if the app is running in a production environment.
bool get isProduction => const String.fromEnvironment('APP_ENV') == 'production';
