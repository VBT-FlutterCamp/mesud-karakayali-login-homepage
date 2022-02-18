import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:vbt_sample_project/core/constants/strings/text_form_field_strings.dart';



class MyTextFormField extends StatefulWidget {
    final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FocusNode focusNode;
   final InputDecoration? inputDecoration;
   final bool isPassword;
  const MyTextFormField(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      required this.labelText,
      this.isPassword = false,
      required this.focusNode,
      this.inputDecoration})
      : super(key: key);



  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool passwordHidden=false;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.topLeft,
              child: Text(widget.labelText,)),
              
        Container(
          height: context.height*0.07,
          child: TextFormField(
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            obscureText: 
            widget.labelText=="Re-write Password"&&passwordHidden==false||widget.labelText=="Password"&&passwordHidden==false||widget.labelText=="Create Password"&&passwordHidden==false?true:false,
            decoration: InputDecoration(
              
               border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 2)),
                  suffixIcon: widget.isPassword==true?IconButton(
                      icon: Icon(
                          passwordHidden ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                       setState(() {
                         passwordHidden= !passwordHidden;
                       });
                      }):null
            
            ),
            validator: (value) {
                  if (value == null || value.isEmpty) {
                    return TextFormFieldStrings.errorNullOrEmpty;
                  }
                  if (value.length < 6) {
                    return TextFormFieldStrings.errorSmallfromSix;
                  }
                  if (value.length > 20) {
                    return TextFormFieldStrings.errorNotBigfromTwenty;
                  }
                },
          ),
        ),
        ],
      ),
    );
  }
}