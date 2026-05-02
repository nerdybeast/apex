import '../../domain/enums.dart';
import '../../domain/lift.dart';

/// Static lift registry. Seeded once into Firestore at first run; not
/// user-writable. New lifts go here.
///
/// `parentLiftId` lets variations compute % off a parent's training max
/// (e.g. paused bench at 85% of bench TM).
abstract final class LiftIds {
  // Powerlifting — competition
  static const squat = 'squat';
  static const bench = 'bench';
  static const deadlift = 'deadlift';

  // Olympic — competition
  static const snatch = 'snatch';
  static const cleanAndJerk = 'clean_and_jerk';

  // Powerlifting — variations
  static const pausedBench = 'paused_bench';
  static const pinBench = 'pin_bench';
  static const deficitDl = 'deficit_dl';
  static const blockPull = 'block_pull';
  static const ssbSquat = 'ssb_squat';
  static const frontSquat = 'front_squat';

  // Olympic — variations
  static const powerSnatch = 'power_snatch';
  static const powerClean = 'power_clean';
  static const clean = 'clean';
  static const jerk = 'jerk';
  static const hangSnatch = 'hang_snatch';
  static const hangClean = 'hang_clean';
  static const snatchBalance = 'snatch_balance';

  // Accessories
  static const ohp = 'ohp';
  static const pushPress = 'push_press';
  static const rdl = 'rdl';
  static const bbRow = 'bb_row';
  static const ohs = 'ohs';
  static const snatchPull = 'snatch_pull';
  static const cleanPull = 'clean_pull';
}

const seedLifts = <Lift>[
  // --- PL competition ---
  Lift(
    id: LiftIds.squat,
    name: 'Back Squat',
    sport: Sport.powerlifting,
    category: LiftCategory.competition,
  ),
  Lift(
    id: LiftIds.bench,
    name: 'Bench Press',
    sport: Sport.powerlifting,
    category: LiftCategory.competition,
  ),
  Lift(
    id: LiftIds.deadlift,
    name: 'Deadlift',
    sport: Sport.powerlifting,
    category: LiftCategory.competition,
  ),

  // --- OL competition ---
  Lift(
    id: LiftIds.snatch,
    name: 'Snatch',
    sport: Sport.weightlifting,
    category: LiftCategory.competition,
  ),
  Lift(
    id: LiftIds.cleanAndJerk,
    name: 'Clean & Jerk',
    sport: Sport.weightlifting,
    category: LiftCategory.competition,
  ),

  // --- PL variations ---
  Lift(
    id: LiftIds.pausedBench,
    name: 'Paused Bench',
    sport: Sport.powerlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.bench,
  ),
  Lift(
    id: LiftIds.pinBench,
    name: 'Pin Bench',
    sport: Sport.powerlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.bench,
  ),
  Lift(
    id: LiftIds.deficitDl,
    name: 'Deficit Deadlift',
    sport: Sport.powerlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.deadlift,
  ),
  Lift(
    id: LiftIds.blockPull,
    name: 'Block Pull',
    sport: Sport.powerlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.deadlift,
  ),
  Lift(
    id: LiftIds.ssbSquat,
    name: 'SSB Squat',
    sport: Sport.powerlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.squat,
  ),
  Lift(
    id: LiftIds.frontSquat,
    name: 'Front Squat',
    sport: Sport.powerlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.squat,
  ),

  // --- OL variations ---
  Lift(
    id: LiftIds.powerSnatch,
    name: 'Power Snatch',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.snatch,
  ),
  Lift(
    id: LiftIds.powerClean,
    name: 'Power Clean',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.cleanAndJerk,
  ),
  Lift(
    id: LiftIds.clean,
    name: 'Clean',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.cleanAndJerk,
  ),
  Lift(
    id: LiftIds.jerk,
    name: 'Jerk',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.cleanAndJerk,
  ),
  Lift(
    id: LiftIds.hangSnatch,
    name: 'Hang Snatch',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.snatch,
  ),
  Lift(
    id: LiftIds.hangClean,
    name: 'Hang Clean',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.cleanAndJerk,
  ),
  Lift(
    id: LiftIds.snatchBalance,
    name: 'Snatch Balance',
    sport: Sport.weightlifting,
    category: LiftCategory.variation,
    parentLiftId: LiftIds.snatch,
  ),

  // --- Accessories ---
  Lift(
    id: LiftIds.ohp,
    name: 'Overhead Press',
    sport: Sport.powerlifting,
    category: LiftCategory.accessory,
  ),
  Lift(
    id: LiftIds.pushPress,
    name: 'Push Press',
    sport: Sport.weightlifting,
    category: LiftCategory.accessory,
  ),
  Lift(
    id: LiftIds.rdl,
    name: 'Romanian Deadlift',
    sport: Sport.powerlifting,
    category: LiftCategory.accessory,
  ),
  Lift(
    id: LiftIds.bbRow,
    name: 'Barbell Row',
    sport: Sport.powerlifting,
    category: LiftCategory.accessory,
  ),
  Lift(
    id: LiftIds.ohs,
    name: 'Overhead Squat',
    sport: Sport.weightlifting,
    category: LiftCategory.accessory,
  ),
  Lift(
    id: LiftIds.snatchPull,
    name: 'Snatch Pull',
    sport: Sport.weightlifting,
    category: LiftCategory.accessory,
    parentLiftId: LiftIds.snatch,
  ),
  Lift(
    id: LiftIds.cleanPull,
    name: 'Clean Pull',
    sport: Sport.weightlifting,
    category: LiftCategory.accessory,
    parentLiftId: LiftIds.cleanAndJerk,
  ),
];
