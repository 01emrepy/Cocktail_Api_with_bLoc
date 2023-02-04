import 'package:flutter_coctail_api_with_bloc/domain/coctail/cocktail_model.dart';

abstract class ICocktailService {
  Future<CocktailModel> fetchCocktailProduct();
}
