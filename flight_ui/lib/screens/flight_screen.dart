import 'package:flight_ui/screens/seat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  FlightScreenState createState() {
    return FlightScreenState();
  }
}

class FlightScreenState extends State<FlightScreen> {
  Color oneWayContainerColor = Colors.white;
  Color twoWayContainerColor = Colors.blue[900]!;
  Color oneWayTextColor = Colors.grey;
  Color twoWayTextColor = Colors.white;
  bool value = true;
  var classes = ["Economy", "Business", "First Class"];
  String selectedClass = "Economy";

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[800],
      statusBarIconBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 370.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 52.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/worldmap.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55.0,
                left: 120.0,
                child: Text(
                  'Search Flight',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Positioned(
                top: 110.0,
                left: 30.0,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 6.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Container(
                            width: 2.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.transparent,
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Container(
                            width: 2.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Container(
                            width: 6.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Departure From',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'SLM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Kathmandu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70.0),
                            child: Text(
                              'Arrival At',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'BTL',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Pokhara',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 220.0,
                left: 200.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 1.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.flight_takeoff,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    Container(
                      width: 50.0,
                      height: 1.0,
                      color: Colors.white,
                    ),
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 340.0,
                left: 20.0,
                right: 20.0,
                child: Container(
                  width: 145.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            oneWayContainerColor = Colors.blue[900]!;
                            twoWayContainerColor = Colors.white;
                            twoWayTextColor = Colors.grey;
                            oneWayTextColor = Colors.white;
                            value = false;
                          });
                        },
                        child: Container(
                          width: 130.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: oneWayContainerColor == Colors.blue[900]
                                ? LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.blue[900]!,
                                      Colors.blue[700]!
                                    ],
                                  )
                                : null,
                            color: oneWayContainerColor == Colors.white
                                ? Colors.white
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              'One Way',
                              style: TextStyle(color: oneWayTextColor),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            oneWayContainerColor = Colors.white;
                            twoWayContainerColor = Colors.blue[900]!;
                            twoWayTextColor = Colors.white;
                            oneWayTextColor = Colors.grey;
                            value = true;
                          });
                        },
                        child: Container(
                          width: 130.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: twoWayContainerColor == Colors.blue[900]
                                ? LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.blue[900]!,
                                      Colors.blue[700]!
                                    ],
                                  )
                                : null,
                            color: twoWayContainerColor == Colors.white
                                ? Colors.white
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              'Two Way',
                              style: TextStyle(color: twoWayTextColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: tripDetailsWidget(value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 350.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(18.0),
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return SeatScreen();
                      }),
                    ),
                  );
                },
                child: Text(
                  'Search Flight',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget tripDetailsWidget(bool value) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 350.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: value
            ? SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    flightDetailsWidget(
                      Icons.date_range,
                      'Departure Date',
                      0,
                      subtitle: 'Mon, 14 Dec',
                    ),
                    flightDetailsWidget(
                      Icons.date_range,
                      'Arrival Date',
                      1,
                      subtitle: 'Sun, 15 Dec',
                    ),
                    flightDetailsWidget(
                      Icons.people,
                      'Passenger',
                      2,
                      subtitle: '1 Adult 0 Child 0 Infant',
                    ),
                    flightDetailsWidget(Icons.people, 'Class', 3),
                  ],
                ),
              )
            : Column(
                children: <Widget>[
                  flightDetailsWidget(
                    Icons.date_range,
                    'Departure Date',
                    0,
                    subtitle: 'Mon, 14 Dec',
                  ),
                  flightDetailsWidget(
                    Icons.people,
                    'Passenger',
                    2,
                    subtitle: '1 Adult 0 Child 0 Infant',
                  ),
                  flightDetailsWidget(Icons.people, 'Class', 3),
                ],
              ),
      ),
    );
  }

  Widget flightDetailsWidget(
    IconData icon,
    String title,
    int index, {
    String? subtitle,
  }) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: index == 3
          ? Container(
              padding: const EdgeInsets.only(top: 4.0, right: 12.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: classes.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: dropDownStringItem == selectedClass
                              ? LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.blue[900]!,
                                    Colors.blue[700]!
                                  ],
                                )
                              : null,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Text(
                          dropDownStringItem,
                          style: TextStyle(
                            color: dropDownStringItem == selectedClass
                                ? Colors.white
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newItemSelected) {
                    if (newItemSelected != null) {
                      setState(() {
                        selectedClass = newItemSelected;
                      });
                    }
                  },
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  value: selectedClass,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            )
          : Text(
              subtitle!,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 20.0);
    path.quadraticBezierTo(size.width / 2.0, 20.0, size.width, 0.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
