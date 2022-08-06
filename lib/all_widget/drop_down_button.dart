import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: DropdownButton(
          items: ['USA', 'SY', 'EG', 'SA','UAE']
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              ).toList(),
          hint: const Text(
              'Select Your Country',
          ),
          onChanged: (val)
          {
            setState((){
              selectedCountry = val.toString();
            });
            print(val);
          },
          value: selectedCountry,
        ),
      ),
    );
  }
}
