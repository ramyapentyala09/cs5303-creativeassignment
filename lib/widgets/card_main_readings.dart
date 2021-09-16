import 'package:flutter/material.dart';

class CardMainReadings extends StatelessWidget {
  final String title;
  final String reading;
  final String subtitle;
  final MaterialAccentColor backgroundColor;

  const CardMainReadings({
    required this.title,
    required this.reading,
    required this.subtitle,
    required this.backgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10.0,
          color: backgroundColor[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'PatrickHand',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    reading,
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                        fontFamily: 'PatrickHand',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
