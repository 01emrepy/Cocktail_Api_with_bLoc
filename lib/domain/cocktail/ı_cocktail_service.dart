import 'package:flutter_coctail_api_with_bloc/domain/cocktail/cocktail_model.dart';

abstract class ICocktailService {
  Future<List<dynamic>> fetchCocktailProduct();
}
