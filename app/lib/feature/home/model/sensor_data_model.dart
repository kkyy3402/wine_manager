// To parse this JSON data, do
//
//     final sensorDataModel = sensorDataModelFromJson(jsonString);

import 'dart:convert';

WineDataModel sensorDataModelFromJson(String str) => WineDataModel.fromJson(json.decode(str));

String sensorDataModelToJson(WineDataModel data) => json.encode(data.toJson());

class WineDataModel {
  WineDataModel({
    this.responseCode,
    this.message,
    this.data,
  });

  int? responseCode;
  String? message;
  SensorDataModel? data;

  factory WineDataModel.fromJson(Map<String, dynamic> json) => WineDataModel(
    responseCode: json["responseCode"],
    message: json["message"],
    data: SensorDataModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "responseCode": responseCode,
    "message": message,
    "data": data!.toJson(),
  };
}

class SensorDataModel {
  SensorDataModel({
    this.userId,
    this.storageData,
    this.elapsedTime,
  });

  int? userId;
  List<SingleStorageData>? storageData;
  double? elapsedTime;

  factory SensorDataModel.fromJson(Map<String, dynamic> json) => SensorDataModel(
    userId: json["userId"],
    storageData: List<SingleStorageData>.from(json["storage_data"].map((x) => SingleStorageData.fromJson(x))),
    elapsedTime: json["elapsed_time"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "storage_data": List<dynamic>.from(storageData!.map((x) => x.toJson())),
    "elapsed_time": elapsedTime,
  };
}

class SingleStorageData {
  SingleStorageData({
    this.storageName,
    this.sensorData,
    this.status,
  });

  String? storageName;
  List<double>? sensorData;
  int? status;

  factory SingleStorageData.fromJson(Map<String, dynamic> json) => SingleStorageData(
    storageName: json["storage_name"],
    sensorData: List<double>.from(json["sensor_data"].map((x) => x.toDouble())),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "storage_name": storageName,
    "sensor_data": List<dynamic>.from(sensorData!.map((x) => x)),
    "status": status,
  };
}
