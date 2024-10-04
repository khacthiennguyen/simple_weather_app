part of 'wearther_bloc_bloc.dart';

sealed class WeartherBlocEvent extends Equatable {
  const WeartherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWearther extends WeartherBlocEvent {
  final Position position;
  const FetchWearther(this.position);

    @override
  List<Object> get props => [position];

}
