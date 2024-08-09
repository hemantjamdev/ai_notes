import 'package:local_auth/local_auth.dart';

class AuthServices {
  AuthServices() {
    initAuth();
  }

  initAuth() async {
    final LocalAuthentication auth = LocalAuthentication();

    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;

    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await auth.isDeviceSupported();
  }
  // bool canAuth get=>can
}
