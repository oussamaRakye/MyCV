import 'package:flutter/material.dart';
import '../constants.dart';

class InputForm extends StatefulWidget {

  final String name;
  final TextInputType textInputType;
  final Function onChanged;

  InputForm({this.name,this.textInputType=TextInputType.multiline, this.onChanged});

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter a ${widget.name}';
          }
          return null;
        },
        style: TextStyle(
            color: Colors.white
        ),

        keyboardType: widget.textInputType,
        minLines: 1,
        maxLines: (widget.textInputType==TextInputType.multiline) ? 20 : 1,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kBlue)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          labelText: 'Enter the ${widget.name}',
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
