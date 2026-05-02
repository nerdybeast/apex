import '../../domain/enums.dart';
import '../../domain/prescription.dart';
import '../../domain/program_template.dart';
import 'lifts_seed.dart';

/// Two preloaded peaking blocks. Generic, copyright-safe — just enough to
/// demonstrate program structure.
///
/// Both flagged `isPreloaded: true`; seeded once at app first-run. Owned by
/// the system (`ownerId == 'system'`) so rules expose them to all
/// authenticated users.
abstract final class PreloadedTemplateIds {
  static const plPeak12 = 'preloaded_pl_peak_12';
  static const olPeak10 = 'preloaded_ol_peak_10';
}

const _systemOwnerId = 'system';

/// Convenience constructors. Kept private so the seed file reads as data,
/// not procedure.
TemplateItem _pct(String liftId, double tm, int sets, int reps,
        {String? notes,}) =>
    TemplateItem(
      liftId: liftId,
      prescription: Prescription.percent(
        target: tm,
        sets: sets,
        reps: reps,
        notes: notes,
      ),
    );

TemplateItem _amrap(String liftId, double tm, {String? notes}) =>
    TemplateItem(
      liftId: liftId,
      prescription: Prescription.amrap(
        target: tm,
        sets: 1,
        minReps: 3,
        notes: notes ?? 'AMRAP — promote training max if reps >= 6',
      ),
    );

TemplateItem _rpe(String liftId, double rpe, int sets, int reps,
        {String? notes,}) =>
    TemplateItem(
      liftId: liftId,
      prescription: Prescription.rpe(
        target: rpe,
        sets: sets,
        reps: reps,
        notes: notes,
      ),
    );

TemplateDay _day(String name, List<TemplateItem> items) =>
    TemplateDay(name: name, items: items);

// =====================================================================
// 12-Week Powerlifting Peak
// =====================================================================
//
// 3 days/week. Squat day, Bench day, Deadlift day. Top sets at the
// percentage shown; back-off and accessory volume kept minimal so the
// structure is easy to scan.
//
//   Weeks 1-4   hypertrophy   70-75% TM, AMRAP finishers
//   Weeks 5-8   strength      80-87% TM, fixed reps
//   Weeks 9-11  peak          90-102% TM, singles/doubles
//   Week 12     taper         openers only, then meet

TemplateWeek _plHypertrophyWeek(int n, double topPct) => TemplateWeek(
      name: 'Week $n',
      focus: 'Hypertrophy ${topPct.toStringAsFixed(0)}%',
      days: [
        _day('Squat Day', [
          _pct(LiftIds.squat, topPct, 4, 6),
          _amrap(LiftIds.squat, topPct - 10),
          _pct(LiftIds.pausedBench, 65, 3, 8),
          _pct(LiftIds.rdl, 60, 3, 10),
        ]),
        _day('Bench Day', [
          _pct(LiftIds.bench, topPct, 4, 6),
          _amrap(LiftIds.bench, topPct - 10),
          _pct(LiftIds.ohp, 60, 3, 8),
          _pct(LiftIds.bbRow, 60, 3, 10),
        ]),
        _day('Deadlift Day', [
          _pct(LiftIds.deadlift, topPct, 3, 5),
          _amrap(LiftIds.deadlift, topPct - 10),
          _pct(LiftIds.ssbSquat, 65, 3, 8),
          _pct(LiftIds.bbRow, 60, 3, 10),
        ]),
      ],
    );

TemplateWeek _plStrengthWeek(int n, double topPct) => TemplateWeek(
      name: 'Week $n',
      focus: 'Strength ${topPct.toStringAsFixed(0)}%',
      days: [
        _day('Squat Day', [
          _pct(LiftIds.squat, topPct, 5, 3),
          _pct(LiftIds.pausedBench, 75, 4, 5),
          _pct(LiftIds.rdl, 65, 3, 8),
        ]),
        _day('Bench Day', [
          _pct(LiftIds.bench, topPct, 5, 3),
          _pct(LiftIds.pinBench, 75, 3, 5),
          _pct(LiftIds.ohp, 65, 3, 8),
        ]),
        _day('Deadlift Day', [
          _pct(LiftIds.deadlift, topPct, 4, 2),
          _pct(LiftIds.deficitDl, 70, 3, 4),
          _pct(LiftIds.bbRow, 65, 3, 8),
        ]),
      ],
    );

TemplateWeek _plPeakWeek(int n, double topPct, int reps) => TemplateWeek(
      name: 'Week $n',
      focus: 'Peak ${topPct.toStringAsFixed(0)}% x $reps',
      days: [
        _day('Squat Day', [
          _pct(LiftIds.squat, topPct, 3, reps),
          _pct(LiftIds.pausedBench, 80, 3, 3),
        ]),
        _day('Bench Day', [
          _pct(LiftIds.bench, topPct, 3, reps),
          _pct(LiftIds.ohp, 70, 3, 5),
        ]),
        _day('Deadlift Day', [
          _pct(LiftIds.deadlift, topPct, 2, reps),
          _pct(LiftIds.blockPull, 80, 2, 2),
        ]),
      ],
    );

TemplateWeek _plTaperWeek() => TemplateWeek(
      name: 'Week 12',
      focus: 'Taper / Meet',
      days: [
        _day('Openers', [
          _pct(LiftIds.squat, 90, 1, 1, notes: 'Opener single'),
          _pct(LiftIds.bench, 90, 1, 1, notes: 'Opener single'),
          _pct(LiftIds.deadlift, 90, 1, 1, notes: 'Opener single'),
        ]),
        _day('Meet Day', const []),
      ],
    );

final ProgramTemplate plPeak12 = ProgramTemplate(
  id: PreloadedTemplateIds.plPeak12,
  ownerId: _systemOwnerId,
  sport: Sport.powerlifting,
  name: '12-Week Powerlifting Peak',
  lengthWeeks: 12,
  description:
      'Three-phase peak: 4 weeks hypertrophy, 4 weeks strength, 3 weeks '
      'peak singles/doubles, 1 week taper into meet day. Top sets driven '
      'off training max; AMRAP finishers in the hypertrophy phase auto-'
      'promote training max when reps clear threshold.',
  isPreloaded: true,
  weeks: [
    _plHypertrophyWeek(1, 70),
    _plHypertrophyWeek(2, 72.5),
    _plHypertrophyWeek(3, 75),
    _plHypertrophyWeek(4, 72.5), // deload
    _plStrengthWeek(5, 80),
    _plStrengthWeek(6, 82.5),
    _plStrengthWeek(7, 85),
    _plStrengthWeek(8, 87.5),
    _plPeakWeek(9, 90, 2),
    _plPeakWeek(10, 95, 1),
    _plPeakWeek(11, 102, 1),
    _plTaperWeek(),
  ],
);

// =====================================================================
// 10-Week Olympic Peak
// =====================================================================
//
// 3 days/week. Snatch-focus / C&J-focus / Mixed. RPE-driven —
// percentages would be brittle without velocity tracking.
//
//   Weeks 1-3   volume      doubles/triples on classics, RPE 7-8
//   Weeks 4-6   intensity   singles climbing, RPE 8-9
//   Weeks 7-9   peak        opener/second/third simulation
//   Week 10     taper

TemplateWeek _olVolumeWeek(int n, double rpe) => TemplateWeek(
      name: 'Week $n',
      focus: 'Volume RPE ${rpe.toStringAsFixed(1)}',
      days: [
        _day('Snatch Focus', [
          _rpe(LiftIds.snatch, rpe, 4, 2),
          _rpe(LiftIds.snatchPull, rpe, 3, 3),
          _rpe(LiftIds.frontSquat, rpe, 4, 4),
        ]),
        _day('C&J Focus', [
          _rpe(LiftIds.cleanAndJerk, rpe, 4, 2),
          _rpe(LiftIds.cleanPull, rpe, 3, 3),
          _rpe(LiftIds.frontSquat, rpe, 4, 4),
        ]),
        _day('Mixed', [
          _rpe(LiftIds.powerSnatch, rpe, 4, 2),
          _rpe(LiftIds.powerClean, rpe, 4, 2),
          _rpe(LiftIds.pushPress, rpe, 3, 5),
        ]),
      ],
    );

TemplateWeek _olIntensityWeek(int n, double rpe) => TemplateWeek(
      name: 'Week $n',
      focus: 'Intensity RPE ${rpe.toStringAsFixed(1)}',
      days: [
        _day('Snatch Focus', [
          _rpe(LiftIds.snatch, rpe, 5, 1),
          _rpe(LiftIds.snatchBalance, rpe - 1, 3, 2),
          _rpe(LiftIds.frontSquat, rpe, 4, 2),
        ]),
        _day('C&J Focus', [
          _rpe(LiftIds.clean, rpe, 5, 1),
          _rpe(LiftIds.jerk, rpe, 4, 1),
          _rpe(LiftIds.frontSquat, rpe, 4, 2),
        ]),
        _day('Mixed', [
          _rpe(LiftIds.hangSnatch, rpe - 0.5, 4, 1),
          _rpe(LiftIds.hangClean, rpe - 0.5, 4, 1),
        ]),
      ],
    );

TemplateWeek _olPeakWeek(int n, String label) => TemplateWeek(
      name: 'Week $n',
      focus: 'Peak — $label',
      days: [
        _day('Snatch Simulation', [
          _rpe(LiftIds.snatch, 8, 1, 1, notes: 'Opener'),
          _rpe(LiftIds.snatch, 9, 1, 1, notes: 'Second'),
          _rpe(LiftIds.snatch, 9.5, 1, 1, notes: 'Third'),
        ]),
        _day('C&J Simulation', [
          _rpe(LiftIds.cleanAndJerk, 8, 1, 1, notes: 'Opener'),
          _rpe(LiftIds.cleanAndJerk, 9, 1, 1, notes: 'Second'),
          _rpe(LiftIds.cleanAndJerk, 9.5, 1, 1, notes: 'Third'),
        ]),
        _day('Squat / Pulls', [
          _rpe(LiftIds.frontSquat, 8, 3, 2),
          _rpe(LiftIds.snatchPull, 8, 3, 2),
        ]),
      ],
    );

TemplateWeek _olTaperWeek() => TemplateWeek(
      name: 'Week 10',
      focus: 'Taper / Meet',
      days: [
        _day('Light Touches', [
          _rpe(LiftIds.snatch, 7, 3, 1, notes: 'Light, fast'),
          _rpe(LiftIds.cleanAndJerk, 7, 3, 1, notes: 'Light, fast'),
        ]),
        _day('Meet Day', const []),
      ],
    );

final ProgramTemplate olPeak10 = ProgramTemplate(
  id: PreloadedTemplateIds.olPeak10,
  ownerId: _systemOwnerId,
  sport: Sport.weightlifting,
  name: '10-Week Olympic Peak',
  lengthWeeks: 10,
  description:
      'Three-phase peak: 3 weeks volume, 3 weeks intensity, 3 weeks peak '
      'opener/second/third simulation, 1 week taper. RPE-driven; '
      'autoregulation nudges next-session intensity from last-session '
      'execution.',
  isPreloaded: true,
  weeks: [
    _olVolumeWeek(1, 7),
    _olVolumeWeek(2, 7.5),
    _olVolumeWeek(3, 8),
    _olIntensityWeek(4, 8),
    _olIntensityWeek(5, 8.5),
    _olIntensityWeek(6, 9),
    _olPeakWeek(7, 'Light sim'),
    _olPeakWeek(8, 'Heavy sim'),
    _olPeakWeek(9, 'Final tune'),
    _olTaperWeek(),
  ],
);

final preloadedTemplates = <ProgramTemplate>[plPeak12, olPeak10];
