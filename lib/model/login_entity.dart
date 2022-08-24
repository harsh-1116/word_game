
import 'package:json_annotation/json_annotation.dart';
import 'package:word_game/model/signup_entity.dart';
part 'login_entity.g.dart';

@JsonSerializable()
class LoginEntity{
  @JsonKey(name:'data')
  SignUpResponse? data;
  @JsonKey(name:'token')
  String? token;

  LoginEntity({
    this.data,
    this.token
});


  factory LoginEntity.fromJson(Map<String,dynamic> json)=> _$LoginEntityFromJson(json);

  Map<String,dynamic> toJson() => _$LoginEntityToJson(this);
}