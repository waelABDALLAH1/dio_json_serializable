import 'package:json_annotation/json_annotation.dart';


part 'user.g.dart';


@JsonSerializable()
class User {
  @JsonKey(name: "id")
  late int id;

  @JsonKey(name: "first_name")
  late String firstName;

  @JsonKey(name: "last_name")
  late String lastName;

  @JsonKey(name: "avatar")
  late String avatar;

  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}


@JsonSerializable()
class SingleUserResponse {
  SingleUserResponse();

  @JsonKey(name: "data")
  late User user;

  factory SingleUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SingleUserResponseToJson(this);
}