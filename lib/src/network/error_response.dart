import 'package:alquran_app/src/core/service/core_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: false,
)
class ErrorResponse extends CoreResponse {
  ErrorResponse({
    String? status,
    String? message,
  }) : super(
          status: status,
          message: message,
        );

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
}
