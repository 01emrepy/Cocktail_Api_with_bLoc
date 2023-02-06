import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_model.freezed.dart';

@freezed
class CocktailModel with _$CocktailModel {
  const factory CocktailModel({
    String? idDrink,
    String? strDrink,
    String? strTags,
    String? strCategory,
    String? strIBA,
    String? strAlcoholic,
    String? strGlass,
    String? strInstructions,
    String? strInstructionsDE,
    String? strInstructionsIT,
    String? strDrinkThumb,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? dateModified,
  }) = _CocktailModel;

  const CocktailModel._();

  factory CocktailModel.empty() => const CocktailModel(
        idDrink: '',
        strDrink: '',
        strTags: '',
        strCategory: '',
        strIBA: '',
        strAlcoholic: '',
        strGlass: '',
        strInstructions: '',
        strInstructionsDE: '',
        strInstructionsIT: '',
        strDrinkThumb: '',
        strIngredient1: '',
        strIngredient2: '',
        strIngredient3: '',
        strIngredient4: '',
        dateModified: '',
      );
}
