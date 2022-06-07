// Mocks generated by Mockito 5.2.0 from annotations
// in taxi_rahmati/test/features/manage_work/presentation/bloc/manage_work_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:decimal/decimal.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;
import 'package:taxi_rahmati/core/error/failures.dart' as _i6;
import 'package:taxi_rahmati/core/usecases/usecase.dart' as _i9;
import 'package:taxi_rahmati/core/util/input_converter.dart' as _i10;
import 'package:taxi_rahmati/features/manage_work/domain/entities/ride.dart'
    as _i7;
import 'package:taxi_rahmati/features/manage_work/domain/repositories/ride_repository.dart'
    as _i2;
import 'package:taxi_rahmati/features/manage_work/domain/usecases/add_ride.dart'
    as _i4;
import 'package:taxi_rahmati/features/manage_work/domain/usecases/get_all_rides.dart'
    as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeRideRepository_0 extends _i1.Fake implements _i2.RideRepository {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [AddRide].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddRide extends _i1.Mock implements _i4.AddRide {
  MockAddRide() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RideRepository get rideRepository =>
      (super.noSuchMethod(Invocation.getter(#rideRepository),
          returnValue: _FakeRideRepository_0()) as _i2.RideRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.Ride>> call(_i4.Params? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
              returnValue: Future<_i3.Either<_i6.Failure, _i7.Ride>>.value(
                  _FakeEither_1<_i6.Failure, _i7.Ride>()))
          as _i5.Future<_i3.Either<_i6.Failure, _i7.Ride>>);
}

/// A class which mocks [GetAllRides].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAllRides extends _i1.Mock implements _i8.GetAllRides {
  MockGetAllRides() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RideRepository get rideRepository =>
      (super.noSuchMethod(Invocation.getter(#rideRepository),
          returnValue: _FakeRideRepository_0()) as _i2.RideRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.Ride>>> call(
          _i9.NoParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue: Future<_i3.Either<_i6.Failure, List<_i7.Ride>>>.value(
              _FakeEither_1<_i6.Failure, List<_i7.Ride>>())) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i7.Ride>>>);
}

/// A class which mocks [InputConverter].
///
/// See the documentation for Mockito's code generation for more information.
class MockInputConverter extends _i1.Mock implements _i10.InputConverter {
  MockInputConverter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Either<_i6.Failure, _i11.Decimal> stringToDecimal(String? string) =>
      (super.noSuchMethod(Invocation.method(#stringToDecimal, [string]),
              returnValue: _FakeEither_1<_i6.Failure, _i11.Decimal>())
          as _i3.Either<_i6.Failure, _i11.Decimal>);
  @override
  _i3.Either<_i6.Failure, DateTime> stringToDateTime(String? string) =>
      (super.noSuchMethod(Invocation.method(#stringToDateTime, [string]),
              returnValue: _FakeEither_1<_i6.Failure, DateTime>())
          as _i3.Either<_i6.Failure, DateTime>);
  @override
  _i3.Either<_i6.Failure, DateTime> dateAndTimeToDateTime(
          DateTime? date, DateTime? time) =>
      (super.noSuchMethod(Invocation.method(#dateTimesToDateTime, [date, time]),
              returnValue: _FakeEither_1<_i6.Failure, DateTime>())
          as _i3.Either<_i6.Failure, DateTime>);
}
