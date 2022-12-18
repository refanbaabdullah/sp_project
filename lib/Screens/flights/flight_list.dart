//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:learning/Screens/Beas/HelpBoxDecoration.dart';
import '../../Controller/Futu/FutuCon.dart';
import '../../Model/AirlinesFlight.dart';
import '../../constant.dart';
import '../Beas/Widget/NavigationBar.dart' as bar;
import '../Beas/SizeContext.dart';
import '../Beas/Widget/WClick.dart';

//import 'package:learning/Screens/Login/login_screen.dart';
//import 'package:learning/constant.dart';

class FlightScreens extends StatefulWidget {
  const FlightScreens({Key? key}) : super(key: key);

  @override
  State<FlightScreens> createState() => _FlightScreensState();
}

class _FlightScreensState extends State<FlightScreens> {
  int index = 0;
  bool filter = true;
  List<AirlinesFlight> Adata = [];
  List<AirlinesFlight> sdata = [];
  String searshfiled = "";
  bool searshstute = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  searsh() {
    sdata = (Adata)
        .where((element) => (filter) ? element.departures : element.arrivals)
        .where((element) => element.flightNo == searshfiled)
        .toList();
    print(sdata);
    if (sdata.isEmpty) return;
    // print(searshfiled);

    setState(() {
      sdata;
    });

    searshstute = true;
  }

  @override
  Widget build(BuildContext context) {
    SizeContext sizeContext = SizeContext(context: context);
    return SafeArea(
      // top: false,
      child: Scaffold(
        bottomNavigationBar: bar.NavigationBar(0),
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
                              color: mFacebookColor,
                              size: sizeContext.height / 25,
                            ),
                          ),
                        ),
                        Container(
                          //home icon:

                          child: Text(
                            "Flights",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Container(
                          //home icon:
                          child: Icon(
                            Icons.home,
                            color: mFacebookColor,
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
                  height: sizeContext.height / 15,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              filter = !filter;
                            });
                          },
                          child: Container(
                            //home icon:
                            width: sizeContext.width / 4,
                            decoration: HelpBoxDecoration.Material().copyWith(
                                color: filter
                                    ? mPrimaryColor
                                    : Colors.grey.shade400),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Departures",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: filter
                                            ? Colors.white
                                            : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              filter = !filter;
                            });
                          },
                          child: Container(
                            //home icon:
                            width: sizeContext.width / 4,
                            decoration: HelpBoxDecoration.Material().copyWith(
                                color: !filter
                                    ? mPrimaryColor
                                    : Colors.grey.shade400),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Arrivals",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: !filter
                                            ? Colors.white
                                            : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: sizeContext.height / 15,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 28.0,
                        top: 8.0,
                        right: 28.0,
                        bottom: 8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          onChanged: (v) {
                            searshfiled = v;
                          },
                          onEditingComplete: () {
                            searsh();
                          },
                          decoration: InputDecoration(
                              icon: InkWell(
                                onTap: () {
                                  if (searshstute) {
                                    searshstute = false;
                                    setState(() {
                                      searshstute;
                                    });
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Icon(
                                    searshstute ? Icons.delete : Icons.search,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              hintText: "Search your fligth no.",
                              border: InputBorder.none
                              // border: OutlineInputBorder(
                              //     borderRadius: )
                              ),
                        ),
                      )),
                ),
                Container(
                  height: sizeContext.height / 20,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Today",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: Platform.isAndroid
                      ? sizeContext.height / 1.6
                      : sizeContext.height / 1.8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.grey.shade400,
                          color: Color(0xffe5eff6),
                          borderRadius: BorderRadius.circular(15)),
                      child: (Adata.where((element) => (filter)
                              ? element.departures
                              : element.arrivals)).isEmpty
                          ? Center(child: CircularProgressIndicator())
                          : RefreshIndicator(
                              onRefresh: () => init(),
                              child: s(
                                  searshstute
                                      ? sdata
                                      : Adata.where((element) => filter
                                          ? element.departures
                                          : element.arrivals).toList(),
                                  filter),
                            ),
                    ),
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

  Future<void> init() async {
    print("....................");

    Adata = await FutuCon.S1();
    setState(() {
      Adata;
    });
    // print(Adata.map((e) => e.toJson()));
    // print("....................");
    //
    // edata = await FutuCon.S2();
    // print(edata.map((e) => e.toJson()));
  }
}

class s extends StatelessWidget {
  List<AirlinesFlight> value = [];
  bool ss;

  s(this.value, this.ss);

  @override
  Widget build(BuildContext context) {
    SizeContext sizeContext = SizeContext(context: context);

    return ListView.builder(
        itemCount: value.length,
        itemBuilder: (c, i) {
          bool stust = true;
          AirlinesFlight model = value[i];
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: sizeContext.width / 4.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(model.airlineImage),
                    ),
                  ),
                  Container(
                    width: sizeContext.width / 2,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(ss ? "dest" : "Origin"),
                        Text(model.flightDest),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.flight_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text(model.flightNo),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.access_alarm_rounded),
                            SizedBox(
                              width: 8,
                            ),
                            Text(model.flightTime),
                          ],
                        ),
                      ],
                    ),
                    // color: Colors.cyan,
                  ),
                  Container(
                    // width: sizeContext.width / 4,

                    child: WClick(stust),
                    // color: Colors.cyan,
                  ),
                ],
              ),
              // color: Colors.cyanAccent,
              // decoration: HelpBoxDecoration.Material(),
            ),
          );
        });
  }
}
