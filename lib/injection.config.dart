// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_coctail_api_with_bloc/application/cocktail_Api/api_cubit.dart'
    as _i3;
import 'package:flutter_coctail_api_with_bloc/domain/cocktail/%C4%B1_cocktail_service.dart'
    as _i4;
import 'package:flutter_coctail_api_with_bloc/infrastructure/cocktail/cocktail_service.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiCubit>(() => _i3.ApiCubit());
    gh.lazySingleton<_i4.ICocktailService>(() => _i5.CocktailService());
    return this;
  }
}
