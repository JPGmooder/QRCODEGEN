import 'dart:convert';

import 'package:flutter/foundation.dart';

class QrCodeConfigModel {
  String data;
  String body;
  String eye;
  String eyeBall;
  List<String> erf1;
  List<String> erf2;
  List<String> erf3;
  List<String> brf1;
  List<String> brf2;
  List<String> brf3;
  String bodyColor;
  String bgColor;
  String eye1Color;
  String eye2Color;
  String eye3Color;
  String eyeBall1Color;
  String eyeBall2Color;
  String eyeBall3Color;
  String gradientColor1;
  String gradientColor2;
  String gradientType;
  bool gradientOnEyes;
  String logo;
  QrCodeConfigModel({
    required this.data,
    required this.body,
    required this.eye,
    required this.eyeBall,
    required this.erf1,
    required this.erf2,
    required this.erf3,
    required this.brf1,
    required this.brf2,
    required this.brf3,
    required this.bodyColor,
    required this.bgColor,
    required this.eye1Color,
    required this.eye2Color,
    required this.eye3Color,
    required this.eyeBall1Color,
    required this.eyeBall2Color,
    required this.eyeBall3Color,
    required this.gradientColor1,
    required this.gradientColor2,
    required this.gradientType,
    required this.gradientOnEyes,
    required this.logo,
  });

  QrCodeConfigModel copyWith({
    String? data,
    String? body,
    String? eye,
    String? eyeBall,
    List<String>? erf1,
    List<String>? erf2,
    List<String>? erf3,
    List<String>? brf1,
    List<String>? brf2,
    List<String>? brf3,
    String? bodyColor,
    String? bgColor,
    String? eye1Color,
    String? eye2Color,
    String? eye3Color,
    String? eyeBall1Color,
    String? eyeBall2Color,
    String? eyeBall3Color,
    String? gradientColor1,
    String? gradientColor2,
    String? gradientType,
    bool? gradientOnEyes,
    String? logo,
  }) {
    return QrCodeConfigModel(
      data: data ?? this.data,
      body: body ?? this.body,
      eye: eye ?? this.eye,
      eyeBall: eyeBall ?? this.eyeBall,
      erf1: erf1 ?? this.erf1,
      erf2: erf2 ?? this.erf2,
      erf3: erf3 ?? this.erf3,
      brf1: brf1 ?? this.brf1,
      brf2: brf2 ?? this.brf2,
      brf3: brf3 ?? this.brf3,
      bodyColor: bodyColor ?? this.bodyColor,
      bgColor: bgColor ?? this.bgColor,
      eye1Color: eye1Color ?? this.eye1Color,
      eye2Color: eye2Color ?? this.eye2Color,
      eye3Color: eye3Color ?? this.eye3Color,
      eyeBall1Color: eyeBall1Color ?? this.eyeBall1Color,
      eyeBall2Color: eyeBall2Color ?? this.eyeBall2Color,
      eyeBall3Color: eyeBall3Color ?? this.eyeBall3Color,
      gradientColor1: gradientColor1 ?? this.gradientColor1,
      gradientColor2: gradientColor2 ?? this.gradientColor2,
      gradientType: gradientType ?? this.gradientType,
      gradientOnEyes: gradientOnEyes ?? this.gradientOnEyes,
      logo: logo ?? this.logo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'body': body,
      'eye': eye,
      'eyeBall': eyeBall,
      'erf1': erf1,
      'erf2': erf2,
      'erf3': erf3,
      'brf1': brf1,
      'brf2': brf2,
      'brf3': brf3,
      'bodyColor': bodyColor,
      'bgColor': bgColor,
      'eye1Color': eye1Color,
      'eye2Color': eye2Color,
      'eye3Color': eye3Color,
      'eyeBall1Color': eyeBall1Color,
      'eyeBall2Color': eyeBall2Color,
      'eyeBall3Color': eyeBall3Color,
      'gradientColor1': gradientColor1,
      'gradientColor2': gradientColor2,
      'gradientType': gradientType,
      'gradientOnEyes': gradientOnEyes,
      'logo': logo,
    };
  }

  factory QrCodeConfigModel.fromMap(Map<String, dynamic> map) {
    return QrCodeConfigModel(
      data: map['data'] ?? '',
      body: map['body'] ?? '',
      eye: map['eye'] ?? '',
      eyeBall: map['eyeBall'] ?? '',
      erf1: List<String>.from(map['erf1']),
      erf2: List<String>.from(map['erf2']),
      erf3: List<String>.from(map['erf3']),
      brf1: List<String>.from(map['brf1']),
      brf2: List<String>.from(map['brf2']),
      brf3: List<String>.from(map['brf3']),
      bodyColor: map['bodyColor'] ?? '',
      bgColor: map['bgColor'] ?? '',
      eye1Color: map['eye1Color'] ?? '',
      eye2Color: map['eye2Color'] ?? '',
      eye3Color: map['eye3Color'] ?? '',
      eyeBall1Color: map['eyeBall1Color'] ?? '',
      eyeBall2Color: map['eyeBall2Color'] ?? '',
      eyeBall3Color: map['eyeBall3Color'] ?? '',
      gradientColor1: map['gradientColor1'] ?? '',
      gradientColor2: map['gradientColor2'] ?? '',
      gradientType: map['gradientType'] ?? '',
      gradientOnEyes: map['gradientOnEyes'] ?? false,
      logo: map['logo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory QrCodeConfigModel.fromJson(String source) => QrCodeConfigModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'QrCodeConfigModel(data: $data, body: $body, eye: $eye, eyeBall: $eyeBall, erf1: $erf1, erf2: $erf2, erf3: $erf3, brf1: $brf1, brf2: $brf2, brf3: $brf3, bodyColor: $bodyColor, bgColor: $bgColor, eye1Color: $eye1Color, eye2Color: $eye2Color, eye3Color: $eye3Color, eyeBall1Color: $eyeBall1Color, eyeBall2Color: $eyeBall2Color, eyeBall3Color: $eyeBall3Color, gradientColor1: $gradientColor1, gradientColor2: $gradientColor2, gradientType: $gradientType, gradientOnEyes: $gradientOnEyes, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is QrCodeConfigModel &&
      other.data == data &&
      other.body == body &&
      other.eye == eye &&
      other.eyeBall == eyeBall &&
      listEquals(other.erf1, erf1) &&
      listEquals(other.erf2, erf2) &&
      listEquals(other.erf3, erf3) &&
      listEquals(other.brf1, brf1) &&
      listEquals(other.brf2, brf2) &&
      listEquals(other.brf3, brf3) &&
      other.bodyColor == bodyColor &&
      other.bgColor == bgColor &&
      other.eye1Color == eye1Color &&
      other.eye2Color == eye2Color &&
      other.eye3Color == eye3Color &&
      other.eyeBall1Color == eyeBall1Color &&
      other.eyeBall2Color == eyeBall2Color &&
      other.eyeBall3Color == eyeBall3Color &&
      other.gradientColor1 == gradientColor1 &&
      other.gradientColor2 == gradientColor2 &&
      other.gradientType == gradientType &&
      other.gradientOnEyes == gradientOnEyes &&
      other.logo == logo;
  }

  @override
  int get hashCode {
    return data.hashCode ^
      body.hashCode ^
      eye.hashCode ^
      eyeBall.hashCode ^
      erf1.hashCode ^
      erf2.hashCode ^
      erf3.hashCode ^
      brf1.hashCode ^
      brf2.hashCode ^
      brf3.hashCode ^
      bodyColor.hashCode ^
      bgColor.hashCode ^
      eye1Color.hashCode ^
      eye2Color.hashCode ^
      eye3Color.hashCode ^
      eyeBall1Color.hashCode ^
      eyeBall2Color.hashCode ^
      eyeBall3Color.hashCode ^
      gradientColor1.hashCode ^
      gradientColor2.hashCode ^
      gradientType.hashCode ^
      gradientOnEyes.hashCode ^
      logo.hashCode;
  }
}
