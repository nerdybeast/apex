# APEX

Strength sport peaking app for powerlifting and weightlifting. A lifter has a meet on a date — APEX gets them to that platform with the biggest possible total, and shows where they're trending.

The full design lives in **`docs/v2-spec.md`** (in the reference repo `nerdybeast/flutter_application_1`, branch `claude/review-strength-app-W3f8g`). Read that first.

---

## Status

Scaffold only. The bones exist — domain models, Firestore repositories, router, screen skeletons, seed data for lifts + two preloaded program templates — but no feature is implemented. See `CLAUDE.md` for what's next.

## First-time local setup

This repo doesn't yet contain the platform folders (`android/`, `ios/`, `web/`, etc.) or `firebase_options.dart` — those are generated locally.

### 1. Install Flutter

Need Flutter 3.22+ and Dart 3.4+.

```bash
flutter --version
flutter doctor
```

### 2. Generate platform scaffolding

`flutter create .` against an existing project leaves your files alone and adds the platform folders:

```bash
cd apex
flutter create --org com.nerdybeast --project-name apex .
```

### 3. Install Firebase CLI tooling

```bash
npm install -g firebase-tools
firebase login
dart pub global activate flutterfire_cli
```

Make sure `~/.pub-cache/bin` is on your `PATH`.

### 4. Wire up Firebase

This generates `lib/firebase_options.dart` (overwriting the placeholder) and updates platform configs:

```bash
flutterfire configure --project=apex-test-5ed98
```

Pick the platforms you actually want (iOS + Android + web is fine).

In the [Firebase console](https://console.firebase.google.com/project/apex-test-5ed98):

- **Authentication** → enable Email/Password and Google.
- **Firestore Database** → create the database (any region; us-central1 is fine).

### 5. Install deps + generate code

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

The `build_runner` step generates `*.freezed.dart` and `*.g.dart` files for the domain models. Re-run it any time you change a `@freezed` class.

### 6. Deploy Firestore rules + indexes

```bash
firebase use apex-test-5ed98
firebase deploy --only firestore:rules
firebase deploy --only firestore:indexes
```

### 7. Seed the database

The lift registry and the two preloaded program templates need to be written into Firestore once. Easiest path for now: temporarily relax `firestore.rules` to allow writes, run a one-shot from a debug build that calls `SeedRunner(FirebaseFirestore.instance).run()`, then redeploy the strict rules. A proper Cloud Function or admin script is post-v1 work.

### 8. Run

```bash
flutter run
```

---

## Project layout

```
lib/
├── main.dart                  app entry; Firebase + Crashlytics init
├── app.dart                   MaterialApp.router shell
├── firebase_options.dart      placeholder; flutterfire configure overwrites
├── core/
│   ├── router.dart            go_router config + auth-driven redirects
│   └── theme.dart
├── domain/                    freezed models (Slice 1: regenerate after editing)
│   ├── enums.dart
│   ├── lift.dart
│   ├── max.dart
│   ├── prescription.dart      sealed class: percent | rpe | weight | amrap
│   ├── program_template.dart  template + week + day + item
│   ├── block.dart             active enrollment of a template
│   ├── session.dart           one training day
│   ├── meet.dart              attempts + results
│   └── user_profile.dart
├── data/                      Firestore wiring
│   ├── firestore_refs.dart    collection name constants + provider
│   ├── timestamp_converter.dart
│   ├── *_repository.dart      one per top-level collection
│   └── seed/
│       ├── lifts_seed.dart
│       ├── program_templates_seed.dart
│       └── seed_runner.dart
└── features/                  one folder per screen
    ├── auth/                  sign-in screen + auth providers
    ├── onboarding/
    ├── today/                 ← center of gravity (Slice 1)
    ├── block/
    ├── lifts/
    ├── meet/
    ├── library/
    └── profile/

firestore.rules                solo-mode rules; coach support post-v1
firestore.indexes.json         composite indexes for sessions / maxes / blocks
firebase.json                  firestore deploy config
```

## Next steps

Slice 1 from the spec:

1. Real onboarding flow that seeds initial 1RMs.
2. Today screen wired to a hardcoded block in code, with computed weights from training maxes.
3. Session logger with set-by-set logging, RPE input, AMRAP -> e1RM auto-update + "promote training max?" prompt.

Slices 2 and 3 details in `docs/v2-spec.md` -> "Build plan".
