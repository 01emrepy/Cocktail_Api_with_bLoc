import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_state.dart';
part 'api_cubit.freezed.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiState.initial());
}
