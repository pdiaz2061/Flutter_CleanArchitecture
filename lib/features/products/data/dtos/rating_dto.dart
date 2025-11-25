import 'dart:convert';

import 'package:equatable/equatable.dart';

class RatingDto extends Equatable {
  final double rate;
  final int count;

  const RatingDto({required this.rate, required this.count});

  factory RatingDto.fromRawJson(String str) =>
      RatingDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RatingDto.fromJson(Map<String, dynamic> json) =>
      RatingDto(rate: json["rate"]?.toDouble(), count: json["count"]);

  Map<String, dynamic> toJson() => {"rate": rate, "count": count};

  @override
  List<Object?> get props => [rate, count];
}
