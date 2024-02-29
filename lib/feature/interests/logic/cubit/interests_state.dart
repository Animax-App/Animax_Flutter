part of 'interests_cubit.dart';

@immutable
sealed class InterestsState {}

final class InterestsInitial extends InterestsState {}

final class InterestChosen extends InterestsState {}

final class InterestNotChosen extends InterestsState {}
