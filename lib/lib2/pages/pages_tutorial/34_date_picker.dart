// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final MyAppBar = AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text(
        "Date Picker",
        style: TextStyle(color: Colors.white),
      ),
    );

    return Scaffold(
      appBar: MyAppBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectDate.toString()),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                  //initialEntryMode: DatePickerEntryMode.input
                  //initialEntryMode: DatePickerEntryMode.calendar

                  //initialDatePickerMode: DatePickerMode.year
                  //initialDatePickerMode: DatePickerMode.day
                  //initialDatePickerMode: DatePickerMode.month
                  selectableDayPredicate: (day) {
                    if (day.weekday == 6 || day.weekday == 7) {
                      return false;
                    }
                    return true;
                  },
                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  errorFormatText: "Error Format Text",
                  errorInvalidText: "Error Invalid Text",
                  fieldHintText: "Masukan tanggal lahir anda",
                  fieldLabelText: "Field Label Text",

                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.dark(),
                      child: child!,
                    );
                  },
                ).then((value) {
                  setState(() {
                    selectDate = value!;
                  });
                });
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
