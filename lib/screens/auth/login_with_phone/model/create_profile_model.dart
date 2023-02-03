class ProfileCreateModel {
  final List<String>? status;
  final List<String>? message;

  ProfileCreateModel({
    this.status,
    this.message,
  });

  ProfileCreateModel copyWith({
    List<String>? status,
    List<String>? message,
  }) {
    return ProfileCreateModel(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  ProfileCreateModel.fromJson(Map<String, dynamic> json)
      : status =
            (json['status'] as List?)?.map((dynamic e) => e as String).toList(),
        message = (json['messsage'] as List?)
            ?.map((dynamic e) => e as String)
            .toList();

  Map<String, dynamic> toJson() => {'status': status, 'messsage': message};
}
