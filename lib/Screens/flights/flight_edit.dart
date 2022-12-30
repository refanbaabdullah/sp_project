//import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:learning/Screens/Beas/HelpBoxDecoration.dart';
import 'package:learning/Screens/homepage/Home_screen.dart';

// import 'package:learning/Screens/flights/flight_ticket.dart';
// import 'package:learning/Screens/homepage/Home_screen.dart';
import '../../Controller/Futu/FutuCon.dart';
import '../../Model/AirlinesFlight.dart';
import '../../constant.dart';
import '../Beas/Widget/NavigationBar.dart' as bar;
import '../Beas/SizeContext.dart';
import '../Beas/Widget/WClick.dart';

//import 'package:learning/Screens/Login/login_screen.dart';
//import 'package:learning/constant.dart';

class flight_add extends StatefulWidget {
  const flight_add({Key? key}) : super(key: key);

  @override
  State<flight_add> createState() => _flight_addState();
}

class _flight_addState extends State<flight_add> {
  bool Fliqhtsstut = false;

  AirlinesFlight value = AirlinesFlight.fromJson({});

  @override
  Widget build(BuildContext context) {
    SizeContext sizeContext = SizeContext(context: context);
    return SafeArea(
      // top: false,
      child: Scaffold(
        bottomNavigationBar: bar.NavigationBar(1),
        body: Padding(
          padding: EdgeInsets.only(
            left: sizeContext.width / 22.0,
            right: sizeContext.width / 22.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: sizeContext.height / 22,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            //home icon:
                            child: Icon(
                              Icons.arrow_back,
                              color: mPrimaryColor,
                              size: sizeContext.height / 25,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Flights",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Container(
                          //home icon:
                          child: Icon(
                            Icons.account_circle_rounded,
                            color: mPrimaryColor,
                            size: sizeContext.height / 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: sizeContext.height / 50,
                ),
                Container(
                  height: sizeContext.height / 17,
                  // color: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Add Flights",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) => flight_add()));
                            },
                            child: Container(
                              // width: sizeContext.width / 4,
                              decoration: HelpBoxDecoration.Material(
                                      borderRadius: BorderRadius.circular(5))
                                  .copyWith(color: Colors.red),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Sing In",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              // color: Colors.cyan,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: Platform.isAndroid
                      ? sizeContext.height / 1.4
                      : sizeContext.height / 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.grey.shade400,
                            color: Color(0xffe5eff6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      Fliqhtsstut ? "DESTINATION" : "ORIGIN",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(fontSize: 18),
                                    ),
                                    Checkbox(
                                        value: Fliqhtsstut,
                                        onChanged: (f) {
                                          setState(() {
                                            Fliqhtsstut = f!;
                                          });
                                        })
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "airline name",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      decoration: HelpBoxDecoration.Material(
                                          color: Colors.grey.shade300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontSize: 18),
                                          onChanged: (c) {
                                            value.compName = c;
                                          },
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "flight city",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      decoration: HelpBoxDecoration.Material(
                                          color: Colors.grey.shade300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontSize: 18),
                                          onChanged: (c) {
                                            value.flight_city = c;
                                          },
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "flight no",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      decoration: HelpBoxDecoration.Material(
                                          color: Colors.grey.shade300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (c) {
                                            value.flightNo = c;
                                          },
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontSize: 18),
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "Estimated Time",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      decoration: HelpBoxDecoration.Material(
                                          color: Colors.grey.shade300),

                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (c) {
                                            value.new_time = c;
                                          },
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontSize: 18),
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "Scheduled Time",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      decoration: HelpBoxDecoration.Material(
                                          color: Colors.grey.shade300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontSize: 18),
                                          onChanged: (c) {
                                            value.flight_time = c;
                                          },
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "Terminal",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("T"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: sizeContext.width / 3.8,
                                      // color: Colors.cyan,
                                      child: Text(
                                        "Gate",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: sizeContext.width / 2,
                                      height: sizeContext.height / 22,
                                      // color: Colors.cyan,
                                      decoration: HelpBoxDecoration.Material(
                                          color: Colors.grey.shade300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (c) {
                                            value.flightGate = c;
                                          },
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontSize: 18),
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () => UpData(),
                                  child: Container(
                                    decoration: HelpBoxDecoration.Material()
                                        .copyWith(color: mPrimaryColor),
                                    height: 50,
                                    width: sizeContext.width / 4,
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Add",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ), // bottomNavigationBar: NavigationBar(
        //   height: 60,
        //   destinations: [
        //
        //   ],
        // )
      ),
    );
  }

  UpData() async {
    value.departures = Fliqhtsstut;
    value.arrivals = Fliqhtsstut == false;
    // print(value.toJson());
    await FutuCon.Add(value);
    Navigator.pop(context, true);
  }
}
