import 'package:equatable/equatable.dart';
import 'address_entity.dart';

class UserEntity extends Equatable {
  final int id;
  final String email;
  final String username;
  final String password;
  final NameEntity name;
  final String phone;
  final AddressEntity address;
  final int v;

  const UserEntity({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    required this.address,
    required this.v,
  });

  @override
  List<Object?> get props => [
    id,
    email,
    username,
    password,
    name,
    phone,
    address,
    v,
  ];
}
