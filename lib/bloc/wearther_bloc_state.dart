part of 'wearther_bloc_bloc.dart';

sealed class WeartherBlocState extends Equatable {
  const WeartherBlocState();
  
  @override
  List<Object> get props => [];
}

final class WeartherBlocInitial extends WeartherBlocState {}

final class WeartherBlocLoading extends WeartherBlocState {}
final class WeartherBlocFailure extends WeartherBlocState {}
final class WeartherBlocSuccess extends WeartherBlocState {
  final Weather weather;
  const WeartherBlocSuccess(this.weather);

    
  @override
  List<Object> get props => [weather];

}






