// To parse this JSON data, do
//
//     final airlinesFlight = airlinesFlightFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AirlinesFlight airlinesFlightFromJson(String str) =>
    AirlinesFlight.fromJson(json.decode(str));

String airlinesFlightToJson(AirlinesFlight data) => json.encode(data.toJson());

class AirlinesFlight {
  AirlinesFlight({
    required this.id,
    required this.airlineImage,
    required this.compName,
    required this.departures,
    required this.arrivals,
    required this.flightDest,
    required this.flightGate,
    required this.flightNo,
    required this.flightTime,
  });

  String id;
  String airlineImage;
  String compName;
  bool departures;
  bool arrivals;
  String flightDest;
  String flightGate;
  String flightNo;
  String flightTime;

  factory AirlinesFlight.fromJson(Map<String, dynamic> json) => AirlinesFlight(
        id: json["id"] == null ? 0 : json["id"],
        airlineImage:
            json["airline_image"] == null ? "null" : json["airline_image"],
        compName: json["comp_name"] == null ? "null" : json["comp_name"],
        departures: json["departures"] == null ? false : json["departures"],
        arrivals: json["arrivals"] == null ? false : json["arrivals"],
        flightDest: json["flight_dest"] == null ? "null" : json["flight_dest"],
        flightGate: json["flight_gate"] == null ? "null" : json["flight_gate"],
        flightNo: json["flight_no"] == null ? "null" : json["flight_no"],
        flightTime: json["flight_time"] == null ? "null" : json["flight_time"],
      );

  Map<String, dynamic> toJson() => {
        "airline_image": airlineImage == null ? null : airlineImage,
        "comp_name": compName == null ? null : compName,
        "departures": departures == null ? null : departures,
        "arrivals": arrivals == null ? null : arrivals,
        "flight_dest": flightDest == null ? null : flightDest,
        "flight_gate": flightGate == null ? null : flightGate,
        "flight_no": flightNo == null ? null : flightNo,
        "flight_time": flightTime == null ? null : flightTime,
      };
}
