import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/block.dart';
import '../../domain/enums.dart';
import '../../domain/prescription.dart';
import '../../domain/program_template.dart';
import '../../domain/session.dart';
import '../firestore_refs.dart';
import 'lifts_seed.dart';

TemplateItem _pct(String id, double pct, int sets, int reps, {String? notes}) =>
    TemplateItem(
      liftId: id,
      prescription: Prescription.percent(
        target: pct,
        sets: sets,
        reps: reps,
        notes: notes,
      ),
    );

TemplateItem _amrap(String id, double pct, {int minReps = 3}) => TemplateItem(
      liftId: id,
      prescription: Prescription.amrap(
        target: pct,
        sets: 1,
        minReps: minReps,
        notes: 'AMRAP — promote TM if e1RM is ≥ 2.5% higher',
      ),
    );

List<TemplateWeek> _plWeeks() => [
      TemplateWeek(
        name: 'Week 1',
        focus: 'Foundation',
        days: [
          TemplateDay(
            name: 'Day 1 — Squat',
            items: [
              _pct(LiftIds.squat, 75, 5, 5),
              _pct(LiftIds.bench, 75, 4, 5),
              _pct(LiftIds.deadlift, 60, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 2 — Deadlift',
            items: [
              _pct(LiftIds.deadlift, 75, 4, 4),
              _pct(LiftIds.bench, 72, 3, 3),
              _pct(LiftIds.squat, 65, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 3 — Bench',
            items: [
              _pct(LiftIds.squat, 77, 4, 4),
              _pct(LiftIds.bench, 77, 5, 5),
              _pct(LiftIds.deadlift, 75, 3, 3),
            ],
          ),
        ],
      ),
      TemplateWeek(
        name: 'Week 2',
        focus: 'Building',
        days: [
          TemplateDay(
            name: 'Day 1 — Squat',
            items: [
              _pct(LiftIds.squat, 77, 5, 5),
              _pct(LiftIds.bench, 77, 4, 5),
              _pct(LiftIds.deadlift, 62, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 2 — Deadlift',
            items: [
              _pct(LiftIds.deadlift, 77, 4, 4),
              _pct(LiftIds.bench, 75, 3, 3),
              _pct(LiftIds.squat, 67, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 3 — Bench',
            items: [
              _pct(LiftIds.squat, 80, 4, 4),
              _pct(LiftIds.bench, 80, 5, 5),
              _pct(LiftIds.deadlift, 77, 3, 3),
            ],
          ),
        ],
      ),
      TemplateWeek(
        name: 'Week 3',
        focus: 'Strength',
        days: [
          TemplateDay(
            name: 'Day 1 — Squat',
            items: [
              _pct(LiftIds.squat, 80, 5, 5),
              _pct(LiftIds.bench, 80, 4, 5),
              _pct(LiftIds.deadlift, 65, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 2 — Deadlift',
            items: [
              _pct(LiftIds.deadlift, 80, 4, 4),
              _pct(LiftIds.bench, 77, 3, 3),
              _pct(LiftIds.squat, 70, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 3 — Test Week',
            items: [
              _amrap(LiftIds.squat, 80),
              _amrap(LiftIds.bench, 80),
              _amrap(LiftIds.deadlift, 80),
            ],
          ),
        ],
      ),
      TemplateWeek(
        name: 'Week 4',
        focus: 'Deload',
        days: [
          TemplateDay(
            name: 'Day 1',
            items: [
              _pct(LiftIds.squat, 70, 3, 3),
              _pct(LiftIds.bench, 70, 3, 3),
            ],
          ),
          TemplateDay(
            name: 'Day 2',
            items: [
              _pct(LiftIds.deadlift, 70, 3, 3),
              _pct(LiftIds.bench, 65, 3, 5),
            ],
          ),
          TemplateDay(
            name: 'Day 3',
            items: [
              _pct(LiftIds.squat, 65, 3, 3),
              _pct(LiftIds.deadlift, 65, 3, 3),
            ],
          ),
        ],
      ),
    ];

List<TemplateWeek> _olWeeks() => [
      TemplateWeek(
        name: 'Week 1',
        focus: 'Foundation',
        days: [
          TemplateDay(
            name: 'Day 1 — Snatch',
            items: [
              _pct(LiftIds.snatch, 70, 5, 3),
              _pct(LiftIds.cleanAndJerk, 70, 4, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 2 — Clean & Jerk',
            items: [
              _pct(LiftIds.cleanAndJerk, 72, 5, 2),
              _pct(LiftIds.snatch, 72, 4, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 3 — Full',
            items: [
              _pct(LiftIds.snatch, 75, 4, 2),
              _pct(LiftIds.cleanAndJerk, 75, 4, 2),
            ],
          ),
        ],
      ),
      TemplateWeek(
        name: 'Week 2',
        focus: 'Building',
        days: [
          TemplateDay(
            name: 'Day 1 — Snatch',
            items: [
              _pct(LiftIds.snatch, 72, 5, 3),
              _pct(LiftIds.cleanAndJerk, 72, 4, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 2 — Clean & Jerk',
            items: [
              _pct(LiftIds.cleanAndJerk, 75, 5, 2),
              _pct(LiftIds.snatch, 75, 4, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 3 — Full',
            items: [
              _pct(LiftIds.snatch, 78, 4, 2),
              _pct(LiftIds.cleanAndJerk, 78, 3, 2),
            ],
          ),
        ],
      ),
      TemplateWeek(
        name: 'Week 3',
        focus: 'Intensity',
        days: [
          TemplateDay(
            name: 'Day 1 — Snatch',
            items: [
              _pct(LiftIds.snatch, 75, 4, 2),
              _pct(LiftIds.cleanAndJerk, 75, 3, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 2 — Clean & Jerk',
            items: [
              _pct(LiftIds.cleanAndJerk, 78, 4, 2),
              _pct(LiftIds.snatch, 78, 3, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 3 — Test Week',
            items: [
              _amrap(LiftIds.snatch, 80, minReps: 2),
              _amrap(LiftIds.cleanAndJerk, 80, minReps: 1),
            ],
          ),
        ],
      ),
      TemplateWeek(
        name: 'Week 4',
        focus: 'Deload',
        days: [
          TemplateDay(
            name: 'Day 1',
            items: [
              _pct(LiftIds.snatch, 70, 3, 2),
              _pct(LiftIds.cleanAndJerk, 70, 3, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 2',
            items: [
              _pct(LiftIds.cleanAndJerk, 65, 3, 2),
              _pct(LiftIds.snatch, 65, 3, 2),
            ],
          ),
          TemplateDay(
            name: 'Day 3',
            items: [
              _pct(LiftIds.snatch, 60, 3, 2),
              _pct(LiftIds.cleanAndJerk, 60, 3, 2),
            ],
          ),
        ],
      ),
    ];

/// Creates a 4-week dev block with sessions pre-scheduled from [startDate].
/// Sessions are spaced every 2 days, with a 1-day gap between weeks.
///
/// Call during onboarding, before saving the user profile, so the block
/// exists when Today loads.
Future<void> createDevBlock({
  required FirebaseFirestore db,
  required String uid,
  required Sport sport,
  required Map<String, double> trainingMaxes,
}) async {
  final weeks = sport == Sport.powerlifting ? _plWeeks() : _olWeeks();
  final today = DateTime.now();
  final startDate = DateTime(today.year, today.month, today.day);

  final blockData = Block(
    id: '',
    ownerId: uid,
    athleteId: uid,
    sport: sport,
    name: sport == Sport.powerlifting ? '4-Week Strength Block' : '4-Week OL Block',
    startDate: startDate,
    trainingMaxes: trainingMaxes,
    status: BlockStatus.running,
    weeks: weeks,
  ).toJson()
    ..remove('id');

  final blockRef =
      await db.collection(FirestoreCollections.blocks).add(blockData);
  final blockId = blockRef.id;

  final batch = db.batch();
  for (var w = 0; w < weeks.length; w++) {
    final week = weeks[w];
    for (var d = 0; d < week.days.length; d++) {
      final day = week.days[d];
      final sessionDate = startDate.add(Duration(days: w * 7 + d * 2));

      final sessionData = TrainingSession(
        id: '',
        ownerId: uid,
        blockId: blockId,
        date: sessionDate,
        weekIndex: w,
        dayIndex: d,
        status: SessionStatus.planned,
        lifts: day.items
            .map(
              (item) => SessionLift(
                liftId: item.liftId,
                prescription: item.prescription,
                actuals: const <ActualSet>[],
              ),
            )
            .toList(),
      ).toJson()
        ..remove('id');

      final sessionRef =
          db.collection(FirestoreCollections.sessions).doc();
      batch.set(sessionRef, sessionData);
    }
  }
  await batch.commit();
}
