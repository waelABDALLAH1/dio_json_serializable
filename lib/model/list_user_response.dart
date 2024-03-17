import 'package:json_annotation/json_annotation.dart';
import 'user.dart';

part 'list_user_response.g.dart';

@JsonSerializable()
class ListUserResponse {
  ListUserResponse();

  @JsonKey(name: "page")
  late int page;
  @JsonKey(name: "per_page")
  late int per_page;
  @JsonKey(name: "total")
  late int total;
  @JsonKey(name: "total_pages")
  late int total_pages;
  @JsonKey(name: "data")
  late List<User> users;
  factory ListUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ListUserResponseFromJson(json);

  Map<String, dynamic> toJson(data) => _$ListUserResponseToJson(this);


}