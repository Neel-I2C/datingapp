class ProfileCreateModel {
  final String? status;
  final String? message;

  ProfileCreateModel({
    this.status,
    this.message,
  });

  ProfileCreateModel copyWith({
    String? status,
    String? message,
  }) {
    return ProfileCreateModel(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  ProfileCreateModel.fromJson(Map<String, dynamic> json)
      : status = json['status'] as String?,
        message = json['message'] as String?;

  Map<String, dynamic> toJson() => {'status': status, 'message': message};
}
