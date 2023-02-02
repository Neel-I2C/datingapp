class ProfileModel {
  final String? status;
  final String? message;
  final List<Data>? data;

  ProfileModel({
    this.status,
    this.message,
    this.data,
  });

  ProfileModel copyWith({
    String? status,
    String? message,
    List<Data>? data,
  }) {
    return ProfileModel(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ProfileModel.fromJson(Map<String, dynamic> json)
      : status = json['status'] as String?,
        message = json['message'] as String?,
        data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList()
      };
}

class Data {
  final int? id;
  final String? userUID;
  final bool? smartPhoto;
  final String? aboutMe;
  final String? jobTitle;
  final String? company;
  final String? school;
  final String? livingIn;
  final String? iAm;
  final bool? showMyGender;
  final bool? showMySexual;
  final bool? showMyAge;
  final bool? showMyDistance;
  final int? user;
  final int? petsLover;
  final int? lifestyleZodioc;
  final int? profileSetting;
  final List<int>? dp;
  final List<int>? interests;
  final List<int>? sexualOrient;

  Data({
    this.id,
    this.userUID,
    this.smartPhoto,
    this.aboutMe,
    this.jobTitle,
    this.company,
    this.school,
    this.livingIn,
    this.iAm,
    this.showMyGender,
    this.showMySexual,
    this.showMyAge,
    this.showMyDistance,
    this.user,
    this.petsLover,
    this.lifestyleZodioc,
    this.profileSetting,
    this.dp,
    this.interests,
    this.sexualOrient,
  });

  Data copyWith({
    int? id,
    String? userUID,
    bool? smartPhoto,
    String? aboutMe,
    String? jobTitle,
    String? company,
    String? school,
    String? livingIn,
    String? iAm,
    bool? showMyGender,
    bool? showMySexual,
    bool? showMyAge,
    bool? showMyDistance,
    int? user,
    int? petsLover,
    int? lifestyleZodioc,
    int? profileSetting,
    List<int>? dp,
    List<int>? interests,
    List<int>? sexualOrient,
  }) {
    return Data(
      id: id ?? this.id,
      userUID: userUID ?? this.userUID,
      smartPhoto: smartPhoto ?? this.smartPhoto,
      aboutMe: aboutMe ?? this.aboutMe,
      jobTitle: jobTitle ?? this.jobTitle,
      company: company ?? this.company,
      school: school ?? this.school,
      livingIn: livingIn ?? this.livingIn,
      iAm: iAm ?? this.iAm,
      showMyGender: showMyGender ?? this.showMyGender,
      showMySexual: showMySexual ?? this.showMySexual,
      showMyAge: showMyAge ?? this.showMyAge,
      showMyDistance: showMyDistance ?? this.showMyDistance,
      user: user ?? this.user,
      petsLover: petsLover ?? this.petsLover,
      lifestyleZodioc: lifestyleZodioc ?? this.lifestyleZodioc,
      profileSetting: profileSetting ?? this.profileSetting,
      dp: dp ?? this.dp,
      interests: interests ?? this.interests,
      sexualOrient: sexualOrient ?? this.sexualOrient,
    );
  }

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        userUID = json['userUID'] as String?,
        smartPhoto = json['smart_photo'] as bool?,
        aboutMe = json['about_me'] as String?,
        jobTitle = json['job_title'] as String?,
        company = json['company'] as String?,
        school = json['school'] as String?,
        livingIn = json['living_in'] as String?,
        iAm = json['i_am'] as String?,
        showMyGender = json['show_my_gender'] as bool?,
        showMySexual = json['show_my_sexual'] as bool?,
        showMyAge = json['show_my_age'] as bool?,
        showMyDistance = json['show_my_distance'] as bool?,
        user = json['user'] as int?,
        petsLover = json['pets_lover'] as int?,
        lifestyleZodioc = json['lifestyle_zodioc'] as int?,
        profileSetting = json['profile_setting'] as int?,
        dp = (json['dp'] as List?)?.map((dynamic e) => e as int).toList(),
        interests =
            (json['interests'] as List?)?.map((dynamic e) => e as int).toList(),
        sexualOrient = (json['sexual_orient'] as List?)
            ?.map((dynamic e) => e as int)
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'userUID': userUID,
        'smart_photo': smartPhoto,
        'about_me': aboutMe,
        'job_title': jobTitle,
        'company': company,
        'school': school,
        'living_in': livingIn,
        'i_am': iAm,
        'show_my_gender': showMyGender,
        'show_my_sexual': showMySexual,
        'show_my_age': showMyAge,
        'show_my_distance': showMyDistance,
        'user': user,
        'pets_lover': petsLover,
        'lifestyle_zodioc': lifestyleZodioc,
        'profile_setting': profileSetting,
        'dp': dp,
        'interests': interests,
        'sexual_orient': sexualOrient
      };
}
