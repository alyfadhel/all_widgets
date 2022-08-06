import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  var fomKey = GlobalKey<FormState>();
  String? username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: fomKey,
          child: Column(
            children:
            [
              SizedBox(
                height: 60.0,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  enabled: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:  const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    label: const Text('Email Address'),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:  const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  autocorrect: true,
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  textInputAction: TextInputAction.go,
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'Please enter your email address';
                    }
                      return null;
                  },
                  onSaved: (text)
                  {
                    username = text;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: ()
                {
                  if(fomKey.currentState!.validate())
                  {
                    fomKey.currentState!.save();
                    print(username.toString());
                  }
                },
                child: const Text(
                  'Send',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
