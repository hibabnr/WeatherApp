import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7CB9E8),
        title: Text('10-day forecast'), // Add background color for the app bar
        // Add an app bar with a back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color(0xFF7CB9E8),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 18.0,
                top: 20.0,
                bottom: 20.0, // Add bottom padding
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Text(
                      'Sunny',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Text(
                        '28°',
                        style: TextStyle(
                          fontSize: 150,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Padding(
                          padding: EdgeInsets.only(right: 1.0, top: 100),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image(
                              height: 120,
                              image: AssetImage('assets/images/sunny.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Saturday, 10 February | 10.00 AM',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 120,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color(0xFF005A9C),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Forecast containers
                          buildForecastContainer('28°', 'Now'),
                          buildForecastContainer('24°', '6 PM'),
                          buildForecastContainer('21°', '7 PM'),
                          buildForecastContainer('20°', '8 PM'),
                          buildForecastContainer('18°', '9 PM'),
                          buildForecastContainer('14°', '10 PM'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForecastContainer(String temperature, String time) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            temperature,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Image(
            height: 40,
            image: AssetImage('assets/images/sunny.png'),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
