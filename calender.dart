import 'package:flutter/material.dart';

class CalenderExample extends StatefulWidget {
  const CalenderExample({super.key});

  @override
  State<CalenderExample> createState() => _CalenderExampleState();
}

class _CalenderExampleState extends State<CalenderExample> {
  DateTime? date;
  
  Future<void> pickDate() async {    
    // future function to pick date means it will take some time to execute and return a value in future its code not wait for the function to complete its execution and return a value before moving on to the next line of code. Instead, it allows the program to continue executing other code while waiting for the future to complete. Once the future completes, it will return a value that can be used in the program.
    final picked = await showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(2015, 28),
      
      lastDate: DateTime(2025, 1),
    );
    if (!mounted || picked == null)  return;
    setState(() => date = picked);

  }
    void setDatevalue() {
      setState(() {
        date = DateTime(2023, 6, 15); // Set the date to June 15, 2023
      });
    }
    @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(
              date == null ? 'No date selected' : 'Selected date: ${date!.toLocal()}',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text('Pick a date'),
            ),
            ElevatedButton(
              onPressed: setDatevalue,
              child: const Text('Set Date to June 15, 2023'),
            ),
          ]
        ),)
    );
  }
}