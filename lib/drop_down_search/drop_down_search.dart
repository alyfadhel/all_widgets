import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropDownSearch extends StatefulWidget {
  const DropDownSearch({Key? key}) : super(key: key);

  @override
  State<DropDownSearch> createState() => _DropDownSearchState();
}

class _DropDownSearchState extends State<DropDownSearch> {
  var selectedItem = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Drop Down Search',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          DropdownSearch<String>(
            popupProps: const PopupProps.menu(
              showSelectedItems: true,
             // disabledItemFn: (String s) => s.startsWith('I'),
            ),
            items: const ["Brazil", "Italian", "Tunisia", 'Canada'],
            // dropdownSearchDecoration: const InputDecoration(
            //   labelText: "Menu mode",
            //   hintText: "country in menu mode",
            // ),
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                label: Text(
                  'Menu Mode',
                ),
              ),
            ),
            onChanged: print,
            selectedItem: selectedItem,
          )
        ],
      ),
    );
  }
}
