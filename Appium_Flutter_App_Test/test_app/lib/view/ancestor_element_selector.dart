import 'package:flutter/material.dart';
import 'package:test_app/component_widget/component_text_form_field.dart';

class ExampleAncestorElementSelector extends StatefulWidget {
  const ExampleAncestorElementSelector({super.key});

  @override
  State<ExampleAncestorElementSelector> createState() =>
      _ExampleAncestorElementSelectorState();
}

class _ExampleAncestorElementSelectorState
    extends State<ExampleAncestorElementSelector> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Example Code for Ancestor Selector"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: [
                // ComponentTextFormField(
                //     label: "First Name",
                //     textHint: "Enter First Name",
                //     Validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return "Please Enter First Name";
                //       }
                //     },
                //     controller: _controllerFirstName),
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person)),
                  controller: _controllerEmail,
                ),
                SizedBox(
                  height: 40,
                ),
                // ComponentTextFormField(
                //     label: "Last Name",
                //     textHint: "Enter Last Name",
                //     Validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return "Please enter Last Name";
                //       }
                //     },
                //     controller: _controllerLastName),
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.lock)),
                  controller: _controllerPassword,
                ),
              ],
            ),
          ),
        ));
  }
}
