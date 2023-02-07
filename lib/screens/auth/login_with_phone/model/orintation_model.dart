class OrientationModel {
  final List<String>? status;
  final List<String>? messsage;
  final List<dynamic>? data;

  OrientationModel({
    this.status,
    this.messsage,
    this.data,
  });

  OrientationModel copyWith({
    List<String>? status,
    List<String>? messsage,
    List<dynamic>? data,
  }) {
    return OrientationModel(
      status: status ?? this.status,
      messsage: messsage ?? this.messsage,
      data: data ?? this.data,
    );
  }

  OrientationModel.fromJson(Map<String, dynamic> json)
      : status =
            (json['status'] as List?)?.map((dynamic e) => e as String).toList(),
        messsage = (json['messsage'] as List?)
            ?.map((dynamic e) => e as String)
            .toList(),
        data = json['data'] as List?;

  Map<String, dynamic> toJson() =>
      {'status': status, 'messsage': messsage, 'data': data};
}
