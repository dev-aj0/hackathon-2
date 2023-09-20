import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _selectedSavedPlace = 'Home'; // Initialize with 'Home'
  bool _isSavedPlacesExpanded = false; // Expansion state for Saved Places
  bool _isPaymentExpanded = false; // Expansion state for Payment

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
            style: TextStyle(color: Colors.white)), // Set app bar text color
        // Remove the settings icon from the app bar
      ),
      backgroundColor:
          Color.fromRGBO(1, 1, 0, 1), // Set the dark background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color:
                Color.fromRGBO(1, 1, 0, 1), // Set the header background color
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://cdn.discordapp.com/attachments/1138622493641412770/1153740690661060829/final-1.png',
                        ),
                        radius: 40, // Adjust the profile picture size as needed
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0), // Increase padding
                            child: Text(
                              'Name: John Smith',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white, // Set text color to white
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0), // Increase padding
                            child: Text(
                              'Phone Number: 647-999-9999',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white, // Set text color to white
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0), // Increase padding
                            child: Text(
                              'Address: 124 Elm Street',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white, // Set text color to white
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0), // Increase padding
                            child: Text(
                              'Vehicle: Tesla Model S',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white, // Set text color to white
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white, // Add a white divider
                  thickness: 1,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.history, color: Colors.white), // Set icon color
            title: Text('Ride History',
                style:
                    TextStyle(color: Colors.white)), // Set text color to white
            onTap: () {
              // Handle the expansion tile tap
              setState(() {
                _isSavedPlacesExpanded = false; // Close Saved Places
                _isPaymentExpanded = false; // Close Payment
                _isRideHistoryExpanded = !_isRideHistoryExpanded;
              });
            },
            trailing: Icon(
              _isRideHistoryExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: Colors.white, // Set icon color
            ),
          ),
          if (_isRideHistoryExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Home option
                        _selectSavedPlace('Home');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        "Bobby's Restaurant",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Bobby's Restaurant option
                        _selectSavedPlace("Bobby's Restaurant");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        'Work',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Work option
                        _selectSavedPlace('Work');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.white), // Set icon color
            title: Text('Payment',
                style:
                    TextStyle(color: Colors.white)), // Set text color to white
            onTap: () {
              // Handle the expansion tile tap
              setState(() {
                _isSavedPlacesExpanded = false; // Close Saved Places
                _isRideHistoryExpanded = false; // Close Ride History
                _isPaymentExpanded = !_isPaymentExpanded;
              });
            },
            trailing: Icon(
              _isPaymentExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: Colors.white, // Set icon color
            ),
          ),
          if (_isPaymentExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        '**** **** **** 1234',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Card option for Payment
                        _selectSavedPlace('**** **** **** 1234');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ListTile(
            leading:
                Icon(Icons.location_on, color: Colors.white), // Set icon color
            title: Text('Saved Places',
                style:
                    TextStyle(color: Colors.white)), // Set text color to white
            onTap: () {
              // Handle the expansion tile tap
              setState(() {
                _isPaymentExpanded = false; // Close Payment
                _isRideHistoryExpanded = false; // Close Ride History
                _isSavedPlacesExpanded = !_isSavedPlacesExpanded;
              });
            },
            trailing: Icon(
              _isSavedPlacesExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: Colors.white, // Set icon color
            ),
          ),
          if (_isSavedPlacesExpanded)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Home option for Saved Places
                        _selectSavedPlace('Home');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        "Bobby's Restaurant",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Bobby's Restaurant option for Saved Places
                        _selectSavedPlace("Bobby's Restaurant");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0), // Add left indentation
                    child: ListTile(
                      dense: true, // Reduce spacing
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0), // Adjust the vertical padding
                      title: Text(
                        'Work',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                      onTap: () {
                        // Handle Work option for Saved Places
                        _selectSavedPlace('Work');
                      },
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _selectSavedPlace(String place) {
    setState(() {
      _selectedSavedPlace = place;
    });
    Navigator.of(context).pop();
  }

  bool _isRideHistoryExpanded = false;
}

void main() => runApp(MaterialApp(home: ProfileScreen()));
