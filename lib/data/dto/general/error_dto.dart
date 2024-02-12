/// errors : ["گزینه انتخابی وضعیت صحیح نمی باشد"]
/// success : false

class ErrorDto {
  ErrorDto({
    List<String>? errors,
    bool? success,
  }) {
    _errors = errors;
    _success = success;
  }

  ErrorDto.fromJson(dynamic json) {
    _errors = json['errors'] != null ? json['errors'].cast<String>() : [];
    _success = json['success'];
  }

  List<String>? _errors;
  bool? _success;

  ErrorDto copyWith({
    List<String>? errors,
    bool? success,
  }) =>
      ErrorDto(
        errors: errors ?? _errors,
        success: success ?? _success,
      );

  List<String>? get errors => _errors;

  bool? get success => _success;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['errors'] = _errors;
    map['success'] = _success;
    return map;
  }
}
