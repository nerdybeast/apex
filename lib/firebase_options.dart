// IMPORTANT: This file is a placeholder. Run `flutterfire configure` from
// the project root to overwrite it with your project's actual config:
//
//   dart pub global activate flutterfire_cli
//   flutterfire configure --project=apex-test-5ed98
//
// The CLI writes a `DefaultFirebaseOptions` class with platform-specific
// `FirebaseOptions` for the platforms you select. This stub exists only
// so the project type-checks before you've run the configure step.

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return _stub('web');
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _stub('android');
      case TargetPlatform.iOS:
        return _stub('ios');
      case TargetPlatform.macOS:
        return _stub('macos');
      case TargetPlatform.windows:
        return _stub('windows');
      case TargetPlatform.linux:
        return _stub('linux');
      case TargetPlatform.fuchsia:
        return _stub('fuchsia');
    }
  }

  static FirebaseOptions _stub(String platform) {
    throw UnsupportedError(
      'firebase_options.dart is a placeholder. Run `flutterfire configure '
      '--project=apex-test-5ed98` to generate the real one. '
      '(Tried to load options for: $platform)',
    );
  }
}
