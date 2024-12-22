import 'package:flight_ui/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class SeatScreen extends StatefulWidget {
  const SeatScreen({super.key});

  @override
  SeatScreenState createState() => SeatScreenState();
}

class SeatScreenState extends State<SeatScreen> {
  final Map<String, String> selectedSeats = {};
  static const int maxSeats = 5;

  final Map<String, List<Color>> classGradients = {
    'First Class': [Colors.purple[900]!, Colors.purple[700]!],
    'Business Class': [Colors.green[900]!, Colors.green[700]!],
    'Economy Class': [Colors.blue[900]!, Colors.blue[700]!],
  };

  final Map<String, Color> classColors = {
    'First Class': Colors.purple[700]!,
    'Business Class': Colors.green[700]!,
    'Economy Class': Colors.blue[700]!,
  };

  String getSeatId(String seatClass, int row, int seatNumber) {
    final letters = ['A', 'B', 'C', 'D', 'E', 'F'];
    return '$row${letters[seatNumber]}';
  }

  void toggleSeat(String seatId, String seatClass) {
    setState(() {
      if (selectedSeats.containsKey(seatId)) {
        selectedSeats.remove(seatId);
      } else if (selectedSeats.length < maxSeats) {
        selectedSeats[seatId] = seatClass;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Maximum $maxSeats seats can be selected'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
  }

  Widget seatWidget(String seatClass, int rowNumber) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(6, (index) {
          final seatId = getSeatId(
            seatClass,
            rowNumber,
            index,
          );
          final isSelected = selectedSeats.containsKey(seatId);

          return GestureDetector(
            onTap: () => toggleSeat(seatId, seatClass),
            child: Icon(
              Icons.airline_seat_recline_normal,
              color: isSelected ? classColors[seatClass] : Colors.white,
              size: seatClass == 'First Class' ? 32 : 24,
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: const Text(
          'Select Seat',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Select up to $maxSeats seats',
                style: TextStyle(color: Colors.white70, fontSize: 14.0),
              ),
            ),

            // First Class Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'First Class',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            seatWidget('First Class', 1),
            seatWidget('First Class', 2),

            // Business Class Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Business Class',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            seatWidget('Business Class', 3),
            seatWidget('Business Class', 4),
            seatWidget('Business Class', 5),

            // Economy Class Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Economy Class',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            ...List.generate(
              6,
              (index) => seatWidget(
                'Economy Class',
                index + 6,
              ),
            ),

            // Selected Seats Summary
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 180.0,
                decoration: BoxDecoration(
                  gradient: selectedSeats.isEmpty
                      ? LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.blue[900]!, Colors.blue[700]!],
                        )
                      : LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: classGradients[selectedSeats.values.first]!,
                        ),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Selected Seats',
                        style: TextStyle(color: Colors.white70),
                      ),
                      subtitle: Text(
                        selectedSeats.isEmpty
                            ? 'No seats selected'
                            : selectedSeats.keys.join(', '),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      leading: Icon(
                        Icons.airline_seat_legroom_extra,
                        color: Colors.white70,
                      ),
                      trailing: Container(
                        width: 130.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.white70,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            selectedSeats.isEmpty
                                ? 'No Class'
                                : selectedSeats.values.first,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 15.0,
                      ),
                      child: SizedBox(
                        width: 350.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(18.0),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: selectedSeats.isEmpty
                              ? null
                              : () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return TicketScreen(
                                        selectedSeats:
                                            selectedSeats.keys.toList(),
                                        seatClass: selectedSeats.values.first,
                                      );
                                    }),
                                  );
                                },
                          child: Text(
                            'Purchase',
                            style: TextStyle(
                              color: selectedSeats.isEmpty
                                  ? Colors.grey
                                  : classColors[selectedSeats.values.first],
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
