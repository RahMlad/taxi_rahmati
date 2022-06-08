// Mocks generated by Mockito 5.2.0 from annotations
// in taxi_rahmati/test/features/manage_work/data/repositories/ride_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:taxi_rahmati/core/network/network_info.dart' as _i6;
import 'package:taxi_rahmati/features/manage_work/data/datasources/ride_local_data_source.dart'
    as _i3;
import 'package:taxi_rahmati/features/manage_work/data/datasources/ride_remote_date_source.dart'
    as _i5;
import 'package:taxi_rahmati/features/manage_work/data/models/ride_model.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeRideModel_0 extends _i1.Fake implements _i2.RideModel {}

/// A class which mocks [RideLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRideLocalDataSource extends _i1.Mock
    implements _i3.RideLocalDataSource {
  MockRideLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> initialize() =>
      (super.noSuchMethod(Invocation.method(#initialize, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<bool> saveRides(List<_i2.RideModel>? allRides) =>
      (super.noSuchMethod(Invocation.method(#saveRides, [allRides]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<_i2.RideModel> addRide(_i2.RideModel? rideModel) =>
      (super.noSuchMethod(Invocation.method(#addRide, [rideModel]),
              returnValue: Future<_i2.RideModel>.value(_FakeRideModel_0()))
          as _i4.Future<_i2.RideModel>);
  @override
  _i4.Future<_i2.RideModel> deleteRide(_i2.RideModel? rideModel) =>
      (super.noSuchMethod(Invocation.method(#deleteRide, [rideModel]),
              returnValue: Future<_i2.RideModel>.value(_FakeRideModel_0()))
          as _i4.Future<_i2.RideModel>);
  @override
  _i4.Future<_i2.RideModel> updateRide(_i2.RideModel? rideModel) =>
      (super.noSuchMethod(Invocation.method(#updateRide, [rideModel]),
              returnValue: Future<_i2.RideModel>.value(_FakeRideModel_0()))
          as _i4.Future<_i2.RideModel>);
  @override
  _i4.Future<List<_i2.RideModel>> getRides() =>
      (super.noSuchMethod(Invocation.method(#getRides, []),
              returnValue: Future<List<_i2.RideModel>>.value(<_i2.RideModel>[]))
          as _i4.Future<List<_i2.RideModel>>);
}

/// A class which mocks [RideRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRideRemoteDataSource extends _i1.Mock
    implements _i5.RideRemoteDataSource {
  MockRideRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.RideModel> addRide(_i2.RideModel? rideModel) =>
      (super.noSuchMethod(Invocation.method(#addRide, [rideModel]),
              returnValue: Future<_i2.RideModel>.value(_FakeRideModel_0()))
          as _i4.Future<_i2.RideModel>);
  @override
  _i4.Future<_i2.RideModel> deleteRide(_i2.RideModel? rideModel) =>
      (super.noSuchMethod(Invocation.method(#deleteRide, [rideModel]),
              returnValue: Future<_i2.RideModel>.value(_FakeRideModel_0()))
          as _i4.Future<_i2.RideModel>);
  @override
  _i4.Future<_i2.RideModel> updateRide(_i2.RideModel? rideModel) =>
      (super.noSuchMethod(Invocation.method(#updateRide, [rideModel]),
              returnValue: Future<_i2.RideModel>.value(_FakeRideModel_0()))
          as _i4.Future<_i2.RideModel>);
  @override
  _i4.Future<List<_i2.RideModel>> getRides() =>
      (super.noSuchMethod(Invocation.method(#getRides, []),
              returnValue: Future<List<_i2.RideModel>>.value(<_i2.RideModel>[]))
          as _i4.Future<List<_i2.RideModel>>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i6.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
