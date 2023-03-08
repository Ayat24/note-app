import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/views/custom_text_field.dart';
import 'package:flutter_application_2/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'EditNote',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'Title',
            maxlines: 5,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
