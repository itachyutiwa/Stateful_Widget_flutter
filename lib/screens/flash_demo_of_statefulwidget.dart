import 'package:flutter/material.dart';

//The Textfield Statefull
class TextfieldDemo extends StatefulWidget {
  @override
  _TextfieldDemoState createState() => _TextfieldDemoState();
}



class _TextfieldDemoState extends State<TextfieldDemo> {
  String city = "";
  var _currencies = ["Man", "Abidjan","Jacqueville", "Dabou", "Yamoussoukro"];
  var _currentItemSelected = "Man";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Intro to scaffold"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  city = userInput;
                });
              },
            ),

            //The dropdowbbutton and dropdownMenuItem Statefull
DropdownButton<String>(
  items: _currencies.map((String dropDownStringItem){
 return DropdownMenuItem<String>(
   value: dropDownStringItem,
   child: Text(dropDownStringItem),
                );
  }).toList(),
  //     onChanged: (String newValueSelected){
  //   onDropDownItemSelected(newValueSelected);
  // },
  value: _currentItemSelected,
),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("Your best city is $city",style: TextStyle(fontSize: 20.0),

            )),
  ]
    ),
        ),
      );
  }

  void _onDropDownItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
//
// void _dropDownItemSelected(String newSelectedValue) {
//   setState(() {
//     this._currentItemSelected=newSelectedValue;
//   });
// }

