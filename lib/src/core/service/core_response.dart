class CoreResponse<T> {
  String? status;
  String? message;
  int? code;
  T? data;

  CoreResponse({
    this.code,
    this.status,
    this.message,
    this.data,
  });
}
