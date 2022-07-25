import 'package:flutter/material.dart';
import 'package:get_current_location/widgets.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff205a59),
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReusableF(
                hintText: "Enter name",
                validator: (value) {
                  if (value!.isNotEmpty && value.length > 3) {
                    return null;
                  } else if (value.isNotEmpty && value.length < 3) {
                    return "too short name";
                  } else {
                    return "field can't be empty";
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ReusableF(
                hintText: "Enter Age",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your **** age";
                  } else if (int.tryParse(value)! < 18) {
                    return "This ain\'t for the kids";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Got your name and age"),
                    ),
                  );
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
