import 'package:flutte_bloc_cubit_tutorial/bloc/weather_bloc.dart';
import 'package:flutte_bloc_cubit_tutorial/cubit/weather_cubit.dart';
import 'package:flutte_bloc_cubit_tutorial/data/weather_repository.dart';
import 'package:flutte_bloc_cubit_tutorial/pages/weather_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        //create: (context) => WeatherCubit(FakeWeatherRepository()),
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: const WeatherSearchPage(),
      ),
    );
  }
}
