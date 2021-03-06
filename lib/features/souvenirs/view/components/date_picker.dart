// import 'package:flutter/material.dart';

// class DatePicker extends StatefulWidget {
//   @override
//   _DatePickerState createState() => _DatePickerState();
// }

// class _DatePickerState extends State<DatePicker> {
//   DateTime pickedDate;

//   @override
//   void initState() {
//     super.initState();
//     pickedDate = DateTime.now();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed: () {
//         _pickDate();
//       },
//       child: Text("Choisir la date"),
//     );
//   }

//   _pickDate() async {
//     DateTime date = await showDatePicker(
//         context: context,
//         initialDate: pickedDate,
//         firstDate: DateTime(DateTime.now().year - 5),
//         lastDate: DateTime(DateTime.now().year + 5));

//     if (date != null) 
//       setState(() {
//         pickedDate = date;
//       });
    
//   }
// }


//! Works but with a different design
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: FormBuilderDateTimePicker(
        attribute: "date",
        initialValue: currentDate,
        firstDate: DateTime(currentDate.year - 20),
        lastDate: currentDate,
        inputType: InputType.date,
        format: DateFormat("yyyy-MM-dd"),
        decoration: InputDecoration(
          hintText: 'Date',
          filled: true,
          fillColor: Colors.grey[100],
          prefixIcon: Icon(Icons.date_range, size: 20),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.black54),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.orange),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(
            left: 16,
            right: 20,
            top: 14,
            bottom: 14,
          ),
        ),
      ),
    );
    
  }
}
