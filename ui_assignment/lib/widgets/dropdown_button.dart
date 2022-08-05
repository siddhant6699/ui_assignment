import 'package:flutter/material.dart';

import '../utils/konstant.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownvalue = 'today';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
          value: dropdownvalue,
          items: dropDownItem.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: SizedBox(
                width: 60,
                child: Text(
                  value,
                  style: defaultBoldTextStyle.copyWith(fontSize: 18),
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          }),
    );
  }
}
