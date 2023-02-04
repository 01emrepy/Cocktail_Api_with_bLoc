part of 'api_cubit.dart';

@freezed
class ApiState with _$ApiState {
  const factory ApiState(
      {required bool loading,
      required bool error,
      required List<CocktailModel> cocktails}) = _Initial;

  const ApiState._();

  factory ApiState.empty() => const ApiState(
      loading: false, error: false, cocktails: <CocktailModel>[]);
}
