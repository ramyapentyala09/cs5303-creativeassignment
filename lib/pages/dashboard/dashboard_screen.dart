import 'package:assignmentram/common/common/colors.dart';
import 'package:assignmentram/widgets/card_main_readings.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  static String routeName = 'dashboard_screen';
  const DashBoard({Key? key}) : super(key: key);

  void handleClick(BuildContext context, int item) {
    switch (item) {
      case 0:
        final snackBar=SnackBar(content: Text('Clicked Logout'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        break;
        case 1:
        final snackBar=SnackBar(content: Text('Clicked Settings'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      'Good Morning, \nRamya',
                      style: TextStyle(
                          fontFamily: 'Pattaya',
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  PopupMenuButton<int>(
                    
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onSelected: (item) => handleClick(context,item),
                    itemBuilder: (context) => [
                      PopupMenuItem<int>(value: 0, child: Text('Logout')),
                      PopupMenuItem<int>(value: 1, child: Text('Settings')),
                    ],
                    
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardMainReadings(
                        reading: '66',
                        subtitle: 'bpm',
                        title: 'Heartbeat',
                        backgroundColor: Colors.lightBlueAccent),
                    CardMainReadings(
                      reading: '144/80',
                      subtitle: 'mmHg',
                      title: 'Blood Pres.',
                      backgroundColor: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 24.0),
                child: Text(
                  'Devices',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            "images/oximeter.png",
                            fit: BoxFit.contain,
                            width: 100,
                            height: 100,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Pulse X Pro',
                              style: TextStyle(
                                fontFamily: 'Pattaya',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text('Last Recorded : \n21 Sep 2021 12:00 AM'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            "images/oximeter2.png",
                            fit: BoxFit.contain,
                            width: 100,
                            height: 100,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Pulse MD Pro',
                              style: TextStyle(
                                fontFamily: 'Pattaya',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text('Last Recorded : \n21 Sep 2021 08:12 PM'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            "images/bpm.png",
                            fit: BoxFit.contain,
                            width: 100,
                            height: 100,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Pressure 9 Pro',
                              style: TextStyle(
                                fontFamily: 'Pattaya',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text('Last Recorded : \n21 Sep 2021 03:25 AM'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
