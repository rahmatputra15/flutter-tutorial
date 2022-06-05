import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePickerHome(),
    );
  }
}

class DatePickerHome extends StatefulWidget {
  @override
  State<DatePickerHome> createState() => _DatePickerHomeState();
}

class _DatePickerHomeState extends State<DatePickerHome> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate.day.toString() +
                  "/" +
                  selectedDate.month.toString() +
                  "/" +
                  selectedDate.year.toString(),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030),
                  helpText: "Pilih Tanggal",
                  cancelText: "Batal",
                  confirmText: "Pilih",
                  // initialEntryMode: DatePickerEntryMode.calendarOnly,
                  // initialDatePickerMode: DatePickerMode.year,
                  selectableDayPredicate: (day) {
                    if ((day.isAfter(
                            DateTime.now().subtract(Duration(days: 1)))) &&
                        (day.isBefore(
                            DateTime.now().add(Duration(days: 10))))) {
                      return true;
                    }
                    return false;
                  },
                ).then(
                  (value) {
                    if (value != null) {
                      setState(() {
                        selectedDate = value;
                      });
                    }
                  },
                );
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
