import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final GeolocationEntity geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  const AddressEntity({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  @override
  List<Object?> get props => [geolocation, city, street, number, zipcode];
}

class GeolocationEntity extends Equatable {
  final String lat;
  final String long;

  const GeolocationEntity({required this.lat, required this.long});

  @override
  List<Object?> get props => [lat, long];
}

class NameEntity extends Equatable {
  final String firstname;
  final String lastname;

  const NameEntity({required this.firstname, required this.lastname});

  @override
  List<Object?> get props => [firstname, lastname];
}
