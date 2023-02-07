class InterestModel {
  final List<String>? status;
  final List<String>? messsage;
  final List<Data>? data;

  InterestModel({
    this.status,
    this.messsage,
    this.data,
  });

  InterestModel copyWith({
    List<String>? status,
    List<String>? messsage,
    List<Data>? data,
  }) {
    return InterestModel(
      status: status ?? this.status,
      messsage: messsage ?? this.messsage,
      data: data ?? this.data,
    );
  }

  InterestModel.fromJson(Map<String, dynamic> json)
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
  final String? name;

  Data({
    this.id,
    this.name,
  });

  Data copyWith({
    int? id,
    String? name,
  }) {
    return Data(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
