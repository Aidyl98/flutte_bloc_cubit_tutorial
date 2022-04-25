import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/model/weather.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
}
