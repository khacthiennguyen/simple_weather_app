import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/data/my_data.dart';

part 'wearther_bloc_event.dart';
part 'wearther_bloc_state.dart';

class WeartherBlocBloc extends Bloc<WeartherBlocEvent, WeartherBlocState> {
  WeartherBlocBloc() : super(WeartherBlocInitial()) {
    on<FetchWearther>((event, emit) async {

      emit(WeartherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.ENGLISH);

        Weather weather = await wf.currentWeatherByLocation(
          event.position.latitude,
          event.position.longitude,
        );
        print(weather);
        emit(WeartherBlocSuccess(weather));
      } catch (e) {
        emit(WeartherBlocFailure());
      }
    });
  }
}
