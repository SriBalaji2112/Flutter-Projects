import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _value = '';
  bool mon = false, tue = false, wed = false;

  void _onChanged(String value) {
    setState(() {
      _value = "On Change : " + value;
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = "On Submit : " + value;
    });
  }

  void _monCheckBox(bool value) {
    setState(() {
      mon = value;
    });
  }

  void _tueCheckBox(bool value) {
    setState(() {
      mon = value;
    });
  }

  void _wedCheckBox(bool value) {
    setState(() {
      mon = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          SizedBox(height: 30.0),
          Text(_value),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
                labelText: "Enter Name: ",
                labelStyle: TextStyle(
                  color: Colors.green,
                ),
                hintText: "First Name",
                icon: Icon(
                  Icons.people,
                  color: Colors.green,
                )),
            autocorrect: true,
            onChanged: _onChanged,
            onSubmitted: _onSubmit,
          ),
          SizedBox(height: 30.0),

          // Data Table
          Text(
            "Data Table",
          ),
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  "Roll No.",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              DataColumn(
                label: Text(
                  "Name",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              DataColumn(
                label: Text(
                  "Age",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text("210943"),
                  ),
                  DataCell(
                    Text("Balaji"),
                  ),
                  DataCell(
                    Text("21"),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text("210944"),
                  ),
                  DataCell(
                    Text("Lokesh"),
                  ),
                  DataCell(
                    Text("20"),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text("210945"),
                  ),
                  DataCell(
                    Text("Ragul"),
                  ),
                  DataCell(
                    Text("23"),
                  ),
                ],
              ),
            ],
          ),

          // Check Box
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Mon"),
                    Checkbox(
                      value: mon,
                      onChanged: (bool) {
                        setState(() {
                          if (mon == true) {
                            mon = false;
                          } else {
                            mon = true;
                          }
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Tue"),
                    Checkbox(
                      value: tue,
                      onChanged: (bool) {
                        setState(() {
                          if (tue == true) {
                            tue = false;
                          } else {
                            tue = true;
                          }
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Wed"),
                    Checkbox(
                      value: wed,
                      onChanged: (bool) {
                        setState(() {
                          if (wed == true) {
                            wed = false;
                          } else {
                            wed = true;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
