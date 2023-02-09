class AllProfileModel {
  final List<int>? status;
  final List<String>? messsage;
  final List<Data>? data;

  AllProfileModel({
    this.status,
    this.messsage,
    this.data,
  });

  AllProfileModel copyWith({
    List<int>? status,
    List<String>? messsage,
    List<Data>? data,
  }) {
    return AllProfileModel(
      status: status ?? this.status,
      messsage: messsage ?? this.messsage,
      data: data ?? this.data,
    );
  }

  AllProfileModel.fromJson(Map<String, dynamic> json)
      : status =
            (json['status'] as List?)?.map((dynamic e) => e as int).toList(),
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
  final List<dynamic>? sexualOrient;
  final List<dynamic>? interests;
  final ProfileSetting? profileSetting;
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

  Data({
    this.id,
    this.user,
    this.dp,
    this.sexualOrient,
    this.interests,
    this.profileSetting,
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
  });

  Data copyWith({
    int? id,
    User? user,
    List<Dp>? dp,
    List<dynamic>? sexualOrient,
    List<dynamic>? interests,
    ProfileSetting? profileSetting,
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
  }) {
    return Data(
      id: id ?? this.id,
      user: user ?? this.user,
      dp: dp ?? this.dp,
      sexualOrient: sexualOrient ?? this.sexualOrient,
      interests: interests ?? this.interests,
      profileSetting: profileSetting ?? this.profileSetting,
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
        sexualOrient = json['sexual_orient'] as List?,
        interests = json['interests'] as List?,
        profileSetting =
            (json['profile_setting'] as Map<String, dynamic>?) != null
                ? ProfileSetting.fromJson(
                    json['profile_setting'] as Map<String, dynamic>)
                : null,
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
        showMyDistance = json['show_my_distance'] as bool?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'user': user?.toJson(),
        'dp': dp?.map((e) => e.toJson()).toList(),
        'sexual_orient': sexualOrient,
        'interests': interests,
        'profile_setting': profileSetting?.toJson(),
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
        'show_my_distance': showMyDistance
      };
}

class User {
  final dynamic firstName;
  final dynamic lastName;
  final String? email;
  final String? username;

  User({
    this.firstName,
    this.lastName,
    this.email,
    this.username,
  });

  User copyWith({
    dynamic firstName,
    dynamic lastName,
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
      : firstName = json['first_name'],
        lastName = json['last_name'],
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

class ProfileSetting {
  final String? location;
  final bool? globalLocation;
  final String? showMe;
  final bool? showMeSameOrit;
  final bool? showMeOnTinder;

  ProfileSetting({
    this.location,
    this.globalLocation,
    this.showMe,
    this.showMeSameOrit,
    this.showMeOnTinder,
  });

  ProfileSetting copyWith({
    String? location,
    bool? globalLocation,
    String? showMe,
    bool? showMeSameOrit,
    bool? showMeOnTinder,
  }) {
    return ProfileSetting(
      location: location ?? this.location,
      globalLocation: globalLocation ?? this.globalLocation,
      showMe: showMe ?? this.showMe,
      showMeSameOrit: showMeSameOrit ?? this.showMeSameOrit,
      showMeOnTinder: showMeOnTinder ?? this.showMeOnTinder,
    );
  }

  ProfileSetting.fromJson(Map<String, dynamic> json)
      : location = json['location'] as String?,
        globalLocation = json['global_location'] as bool?,
        showMe = json['show_me'] as String?,
        showMeSameOrit = json['show_me_same_orit'] as bool?,
        showMeOnTinder = json['show_me_on_tinder'] as bool?;

  Map<String, dynamic> toJson() => {
        'location': location,
        'global_location': globalLocation,
        'show_me': showMe,
        'show_me_same_orit': showMeSameOrit,
        'show_me_on_tinder': showMeOnTinder
      };
}
