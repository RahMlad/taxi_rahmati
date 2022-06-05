import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;

  const Failure([this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}

class ServerFailure extends Failure {}

class LocalFailure extends Failure {}

class NetworkFailure extends Failure {}

class InvalidInputFailure extends Failure {}
