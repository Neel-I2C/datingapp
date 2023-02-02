class UserLoginModel {
  final String? refresh;
  final String? access;

  UserLoginModel({
    this.refresh,
    this.access,
  });

  UserLoginModel copyWith({
    String? refresh,
    String? access,
  }) {
    return UserLoginModel(
      refresh: refresh ?? this.refresh,
      access: access ?? this.access,
    );
  }

  UserLoginModel.fromJson(Map<String, dynamic> json)
      : refresh = json['refresh'] as String?,
        access = json['access'] as String?;

  Map<String, dynamic> toJson() => {'refresh': refresh, 'access': access};
}
