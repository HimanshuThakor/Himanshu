import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return DateState();
  }
}

class DateState extends State<Date>{
  @override
  Widget build(BuildContext context) {
    var date =DateTime.now();
  return Scaffold(
    appBar: AppBar(title: const Center(child: Text('Date & Time Now')),),
  body: Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Text('Hour ${date.hour}',style: TextStyle(fontSize: 25),),
          // Text('Minute ${date.minute}',style: TextStyle(fontSize: 25),),
          // Text('Second ${date.second}',style: TextStyle(fontSize: 25),),
          // Text('Microseconds ${date.microsecond}',style: TextStyle(fontSize: 25),),
          // Text('Month ${date.month}',style: TextStyle(fontSize: 25),),
          // Text('Year ${date.year}',style: TextStyle(fontSize: 25),),

          Text('Now Day ${DateFormat('d-M-y , h:m:s').format(date)}',style: const TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            setState(() {
            });
          }, child: const Text('Current Time & Date')),
          const SizedBox(height:5),
          ElevatedButton(onPressed: () async {
            DateTime? datetime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1910),
                lastDate: DateTime(2023) );
            // To Get Date On Run //
            if(datetime!=null){
              print('Selected Date= ${datetime.day}-${datetime.month}-${datetime.year}');
            }
          }, child: const Text('Slect Date')),
          const SizedBox(height: 5,),
          ElevatedButton(onPressed: () async {
            var timepick = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial);
            if(timepick!=null){
              print('Selected Time Is=${timepick.hour}:${timepick.minute}');
            }
          }, child: const Text('Pick Time'))
        ],
      ),
    ),
  ),
  );
  }
}