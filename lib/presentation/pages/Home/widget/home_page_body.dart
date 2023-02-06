import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coctail_api_with_bloc/application/cocktail_Api/api_cubit.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.error) {
          return const Center(
            child: Text("Error"),
          );
        }
        if (state.cocktails.isEmpty) {
          return const Center(
            child: Text("No Data"),
          );
        } else {
          return ListView.builder(
            itemCount: state.cocktails.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.cocktails[index].strDrink.toString()),
                subtitle: Text(state.cocktails[index].strCategory.toString()),
                leading: Image.network(
                    state.cocktails[index].strDrinkThumb.toString()),
              );
            },
          );
        }
      },
    );
  }
}
