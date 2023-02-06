import 'package:flutter/cupertino.dart';
import 'package:flutter_coctail_api_with_bloc/domain/cocktail/%C4%B1_cocktail_service.dart';
import 'package:flutter_coctail_api_with_bloc/domain/cocktail/cocktail_model.dart';
import 'package:flutter_coctail_api_with_bloc/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'api_state.dart';
part 'api_cubit.freezed.dart';

@lazySingleton
class ApiCubit extends Cubit<ApiState> {
  late final ICocktailService _cocktailService;

  ApiCubit() : super(ApiState.empty()) {
    _cocktailService = getIt<ICocktailService>();

    getCocktailFromService();
  }
  Future<void> getCocktailFromService() async {
    emit(state.copyWith(
      loading: true,
    ));
    final servicedata = await _cocktailService.fetchCocktailProduct();

    emit(state.cocktails.isEmpty
        ? state.copyWith(loading: true, error: true)
        : state.copyWith(loading: false, error: false));

    final temporaryList = [...state.cocktails];

    temporaryList.addAll(servicedata.map(
      (data) => CocktailModel(
        idDrink: data["idDrink"],
        strDrink: data["strDrink"],
        strCategory: data["strCategory"],
        strAlcoholic: data["strAlcoholic"],
        strGlass: data["strGlass"],
        strInstructions: data["strInstructions"],
        strDrinkThumb: data["strDrinkThumb"],
        strIngredient1: data["strIngredient1"],
      ),
    ));

    emit(state.copyWith(cocktails: temporaryList));
  }
}
