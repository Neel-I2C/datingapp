class ProfileMeModel {
  final List<String>? status;
  final List<String>? messsage;
  final List<Data>? data;

  ProfileMeModel({
    this.status,
    this.messsage,
    this.data,
  });

  ProfileMeModel copyWith({
    List<String>? status,
    List<String>? messsage,
    List<Data>? data,
  }) {
    return ProfileMeModel(
      status: status ?? this.status,
      messsage: messsage ?? this.messsage,
      data: data ?? this.data,
    );
  }

  ProfileMeModel.fromJson(Map<String, dynamic> json)
      : status =
            (json['status'] as List?)?.map((dynamic e) => e as String).toList(),
        messsage = (json['messsage'] as List?)
            ?.map((dynamic e) => e as String)
            .toList(),
        data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'status': status,
        'messsage': messsage,
        'data': data?.map((e) => e.toJson()).toList()
      };
}

class Data {
  final int? id;
  final User? user;
  final List<Dp>? dp;
  final List<SexualOrient>? sexualOrient;
  final List<Interests>? interests;
  final String? userUID;
  final bool? smartPhoto;
  final dynamic aboutMe;
  final dynamic pets;
  final dynamic zodiac;
  final dynamic jobTitle;
  final dynamic company;
  final String? school;
  final dynamic livingIn;
  final String? iAm;
  final bool? showMyGender;
  final bool? showMySexual;
  final bool? showMyAge;
  final bool? showMyDistance;
  final int? profileSetting;

  Data({
    this.id,
    this.user,
    this.dp,
    this.sexualOrient,
    this.interests,
    this.userUID,
    this.smartPhoto,
    this.aboutMe,
    this.pets,
    this.zodiac,
    this.jobTitle,
    this.company,
    this.school,
    this.livingIn,
    this.iAm,
    this.showMyGender,
    this.showMySexual,
    this.showMyAge,
    this.showMyDistance,
    this.profileSetting,
  });

  Data copyWith({
    int? id,
    User? user,
    List<Dp>? dp,
    List<SexualOrient>? sexualOrient,
    List<Interests>? interests,
    String? userUID,
    bool? smartPhoto,
    dynamic aboutMe,
    dynamic pets,
    dynamic zodiac,
    dynamic jobTitle,
    dynamic company,
    String? school,
    dynamic livingIn,
    String? iAm,
    bool? showMyGender,
    bool? showMySexual,
    bool? showMyAge,
    bool? showMyDistance,
    int? profileSetting,
  }) {
    return Data(
      id: id ?? this.id,
      user: user ?? this.user,
      dp: dp ?? this.dp,
      sexualOrient: sexualOrient ?? this.sexualOrient,
      interests: interests ?? this.interests,
      userUID: userUID ?? this.userUID,
      smartPhoto: smartPhoto ?? this.smartPhoto,
      aboutMe: aboutMe ?? this.aboutMe,
      pets: pets ?? this.pets,
      zodiac: zodiac ?? this.zodiac,
      jobTitle: jobTitle ?? this.jobTitle,
      company: company ?? this.company,
      school: school ?? this.school,
      livingIn: livingIn ?? this.livingIn,
      iAm: iAm ?? this.iAm,
      showMyGender: showMyGender ?? this.showMyGender,
      showMySexual: showMySexual ?? this.showMySexual,
      showMyAge: showMyAge ?? this.showMyAge,
      showMyDistance: showMyDistance ?? this.showMyDistance,
      profileSetting: profileSetting ?? this.profileSetting,
    );
  }

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        user = (json['user'] as Map<String, dynamic>?) != null
            ? User.fromJson(json['user'] as Map<String, dynamic>)
            : null,
        dp = (json['dp'] as List?)
            ?.map((dynamic e) => Dp.fromJson(e as Map<String, dynamic>))
            .toList(),
        sexualOrient = (json['sexual_orient'] as List?)
            ?.map(
                (dynamic e) => SexualOrient.fromJson(e as Map<String, dynamic>))
            .toList(),
        interests = (json['interests'] as List?)
            ?.map((dynamic e) => Interests.fromJson(e as Map<String, dynamic>))
            .toList(),
        userUID = json['userUID'] as String?,
        smartPhoto = json['smart_photo'] as bool?,
        aboutMe = json['about_me'],
        pets = json['pets'],
        zodiac = json['zodiac'],
        jobTitle = json['job_title'],
        company = json['company'],
        school = json['school'] as String?,
        livingIn = json['living_in'],
        iAm = json['i_am'] as String?,
        showMyGender = json['show_my_gender'] as bool?,
        showMySexual = json['show_my_sexual'] as bool?,
        showMyAge = json['show_my_age'] as bool?,
        showMyDistance = json['show_my_distance'] as bool?,
        profileSetting = json['profile_setting'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'user': user?.toJson(),
        'dp': dp?.map((e) => e.toJson()).toList(),
        'sexual_orient': sexualOrient?.map((e) => e.toJson()).toList(),
        'interests': interests?.map((e) => e.toJson()).toList(),
        'userUID': userUID,
        'smart_photo': smartPhoto,
        'about_me': aboutMe,
        'pets': pets,
        'zodiac': zodiac,
        'job_title': jobTitle,
        'company': company,
        'school': school,
        'living_in': livingIn,
        'i_am': iAm,
        'show_my_gender': showMyGender,
        'show_my_sexual': showMySexual,
        'show_my_age': showMyAge,
        'show_my_distance': showMyDistance,
        'profile_setting': profileSetting
      };
}

class User {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? username;

  User({
    this.firstName,
    this.lastName,
    this.email,
    this.username,
  });

  User copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? username,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      username: username ?? this.username,
    );
  }

  User.fromJson(Map<String, dynamic> json)
      : firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        email = json['email'] as String?,
        username = json['username'] as String?;

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'username': username
      };
}

class Dp {
  final int? id;
  final String? img;

  Dp({
    this.id,
    this.img,
  });

  Dp copyWith({
    int? id,
    String? img,
  }) {
    return Dp(
      id: id ?? this.id,
      img: img ?? this.img,
    );
  }

  Dp.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        img = json['img'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'img': img};
}

class SexualOrient {
  final int? id;
  final String? nameS;

  SexualOrient({
    this.id,
    this.nameS,
  });

  SexualOrient copyWith({
    int? id,
    String? nameS,
  }) {
    return SexualOrient(
      id: id ?? this.id,
      nameS: nameS ?? this.nameS,
    );
  }

  SexualOrient.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        nameS = json['nameS'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'nameS': nameS};
}

class Interests {
  final int? id;
  final String? name;

  Interests({
    this.id,
    this.name,
  });

  Interests copyWith({
    int? id,
    String? name,
  }) {
    return Interests(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Interests.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
