class CostResponseModel {
  final int? sensor1;
  final int? sensor2;
  final int? sensor3;
  final int? sensor4;

  CostResponseModel({
    required this.sensor1,
    required this.sensor2,
    required this.sensor3,
    required this.sensor4,
  });

  factory CostResponseModel.fromJson(Map<String, dynamic> json) {
    return CostResponseModel(
      sensor1: json["sensor1"],
      sensor2: json["sensor2"],
      sensor3: json["sensor3"],
      sensor4: json["sensor4"],
    );
  }

  CostResponseModel copyWith(
    int? sensor1,
    int? sensor2,
    int? sensor3,
    int? sensor4,
  ) {
    return CostResponseModel(
      sensor1: sensor1 ?? this.sensor1,
      sensor2: sensor2 ?? this.sensor2,
      sensor3: sensor3 ?? this.sensor3,
      sensor4: sensor4 ?? this.sensor4,
    );
  }
}
