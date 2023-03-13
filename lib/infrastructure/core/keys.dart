import 'package:flutter_coctail_api_with_bloc/domain/core/enviroment.dart';

bool isInDevelopmentEnvironment = const bool.fromEnvironment("IS_DEVELOPMENT");
bool get isInProductionEnvironment => !isInDevelopmentEnvironment;

String environment =
    isInDevelopmentEnvironment ? Environment.dev : Environment.prod;
