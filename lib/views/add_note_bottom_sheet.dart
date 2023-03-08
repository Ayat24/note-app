import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/constants.dart';
import 'package:flutter_application_2/views/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 400,
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }

  State<AddNoteForm> createState() => _AddNoteFormState();
}

class AddNoteForm extends StatefulWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  const AddNoteForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
            maxlines: 1,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
