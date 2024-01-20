part of 'next_cubit.dart';

class NextState extends Equatable {
  final bool isLoading;
  const NextState(this.isLoading);

  @override
  List<Object> get props => [isLoading];
}
