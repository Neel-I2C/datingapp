class RegisterUser {
  final List<int>? status;
  final List<String>? message;

  RegisterUser({
    this.status,
    this.message,
  });

  RegisterUser copyWith({
    List<int>? status,
    List<String>? message,
  }) {
    return RegisterUser(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  RegisterUser.fromJson(Map<String, dynamic> json)
      : status =
            (json['status'] as List?)?.map((dynamic e) => e as int).toList(),
        message = (json['message'] as List?)
            ?.map((dynamic e) => e as String)
            .toList();

  Map<String, dynamic> toJson() => {'status': status, 'message': message};
}
