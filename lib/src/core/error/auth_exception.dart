/// Custom authentication exceptions for better error handling
sealed class AuthException implements Exception {
  final String message;
  const AuthException(this.message);

  @override
  String toString() => message;
}

/// User cancelled the sign-in process
class AuthCancelledException extends AuthException {
  const AuthCancelledException() : super('Sign in cancelled');
}

/// No Google account available on device
class NoGoogleAccountException extends AuthException {
  const NoGoogleAccountException() : super('No Google account available');
}

/// Network error during sign-in
class AuthNetworkException extends AuthException {
  const AuthNetworkException([
    super.message = 'Network error. Please check your connection',
  ]);
}

/// General authentication error
class AuthGenericException extends AuthException {
  const AuthGenericException([super.message = 'Authentication failed']);
}

/// Invalid token error
class AuthInvalidTokenException extends AuthException {
  const AuthInvalidTokenException() : super('Invalid authentication token');
}
