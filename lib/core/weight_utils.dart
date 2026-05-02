import '../domain/enums.dart';

/// Rounds [weight] to the nearest 2.5 kg increment (or 5 lb).
double roundWeight(double weight, Units units) {
  final inc = units == Units.kg ? 2.5 : 5.0;
  return (weight / inc).round() * inc;
}

/// Computes the prescribed weight for a percent-based set.
double prescribedWeight(double trainingMax, double percent, Units units) =>
    roundWeight(trainingMax * percent / 100.0, units);

/// Epley 1RM estimate from a working set.
double epley(double weight, int reps) {
  if (reps <= 1) return weight;
  return weight * (1.0 + reps / 30.0);
}

/// Human-readable weight string, e.g. "112.5 kg" or "245 lb".
String formatWeight(double weight, Units units) {
  final suffix = units.name;
  final s = weight % 1 == 0
      ? weight.toInt().toString()
      : weight.toStringAsFixed(1);
  return '$s $suffix';
}
