import 'package:dio/dio.dart';
import 'package:flutter_coctail_api_with_bloc/domain/coctail/%C4%B1_cocktail_service.dart';
import 'package:flutter_coctail_api_with_bloc/domain/coctail/cocktail_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICocktailService)
class CocktailService implements ICocktailService {
  @override
  Future<CocktailModel> fetchCocktailProduct() async {
    final response = await Dio().get(
      'https://www.thecocktaildb.com/api/json/v1/1/random.php',
    );
    return response.data;
  }
}
