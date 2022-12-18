import 'package:cloud_firestore/cloud_firestore.dart';

import '../../Model/AirlinesFlight.dart';

class FutuCon {
  static var s1 =
      FirebaseFirestore.instance.collection("airlines_flight(departures)");
  static var s2 =
      FirebaseFirestore.instance.collection("airlines_flights(arrivals)");

  static Future<List<AirlinesFlight>> S1() async {
    var r = (await s1.get());
    print(r);
    return r.docs.map((e) {
      var ed = e.data();
      ed.addAll({"id": e.id});
      return AirlinesFlight.fromJson(ed);
    }).toList();
  }

  static Future<List<AirlinesFlight>> S2() async {
    return (await s2.get()).docs.map((e) {
      var ed = e.data();
      ed.addAll({"id": e.id});
      return AirlinesFlight.fromJson(ed);
    }).toList();
  }
}
