import 'package:flight_ui/screens/flight_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[900]!, Colors.blue[700]!],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              // Top Section with User Info and Stats
              Positioned(
                top: 20.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  children: <Widget>[
                    // User Info Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Simona',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Summer time, let\'s book a flight for vacation.',
                                style: TextStyle(
                                  color: Colors.white.withAlpha(230),
                                  fontSize: 16.0,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10.0,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              'assets/people.jpeg',
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Stats Cards
                    SizedBox(height: 25.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: _buildStatCard(
                            icon: Icons.poll,
                            iconColor: Colors.amber,
                            label: '1130 pts',
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: _buildStatCard(
                            icon: Icons.account_balance_wallet,
                            iconColor: Colors.indigo,
                            label: '\$ 4600',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Menu Grid
              Positioned(
                top: 225.0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _buildMenuIcon(
                            'Flight',
                            Icons.flight,
                            Colors.purple,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return FlightScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          _buildMenuIcon('Hotel', Icons.hotel, Colors.orange),
                          _buildMenuIcon('Train', Icons.train, Colors.yellow),
                          _buildMenuIcon(
                              'Bus', Icons.directions_bus, Colors.red),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _buildMenuIcon('Movies', Icons.movie, Colors.green),
                          _buildMenuIcon(
                              'Attractions', Icons.pages, Colors.red),
                          _buildMenuIcon('Taxi', Icons.local_taxi, Colors.blue),
                          _buildMenuIcon(
                              'Eats', Icons.restaurant, Colors.lightBlue),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Recommendations Section
              Positioned(
                top: 450.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Recommend',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View more',
                            style: TextStyle(
                              color: Colors.pink[100],
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    _buildRecommendationCards(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required Color iconColor,
    required String label,
  }) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, color: iconColor, size: 24.0),
                SizedBox(width: 12.0),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuIcon(String text, IconData icon, MaterialColor color,
      {VoidCallback? onTap}) {
    return Column(
      children: <Widget>[
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: color.withAlpha(230),
            boxShadow: [
              BoxShadow(
                color: color.withAlpha(77),
                blurRadius: 8.0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: onTap,
              child: Icon(
                icon,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildRecommendationCards() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: _buildLargeCard(
            image: 'assets/operahouse.jpg',
            title: 'Cheap Holiday Promo\nTo Australia',
          ),
        ),
        SizedBox(width: 15.0),
        Expanded(
          flex: 5,
          child: Column(
            children: <Widget>[
              _buildSmallCard(
                image: 'assets/macau.jpg',
                title: 'Explore Macau for\nYour holiday',
              ),
              SizedBox(height: 15.0),
              _buildSmallCard(
                image: 'assets/beach.jpg',
                title: 'Cheap Holiday Promo\nTo Australia',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLargeCard({required String image, required String title}) {
    return Container(
      height: 260.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withAlpha(153),
            ],
          ),
        ),
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[300],
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSmallCard({required String image, required String title}) {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withAlpha(153),
            ],
          ),
        ),
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[300],
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  minimumSize: Size(0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
