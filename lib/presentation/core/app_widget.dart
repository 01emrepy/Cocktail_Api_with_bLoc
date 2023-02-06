import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coctail_api_with_bloc/application/cocktail_Api/api_cubit.dart';
import 'package:flutter_coctail_api_with_bloc/injection.dart';
import 'package:flutter_coctail_api_with_bloc/presentation/pages/Home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ApiCubit()..getCocktailFromService(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
