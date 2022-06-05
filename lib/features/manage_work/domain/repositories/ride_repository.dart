import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/ride.dart';

abstract class RideRepository {
  Future<Either<Failure, List<Ride>>> getAllRides();
  Future<Either<Failure, Ride>> addRide(Ride ride);
}
