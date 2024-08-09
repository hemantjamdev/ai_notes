part of 'home_cubit.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int currentIndex,
  }) = _HomeState;
}
