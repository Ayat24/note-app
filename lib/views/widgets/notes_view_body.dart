import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/widgets/custom_note_item.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'notes',
            icon: Icons.search,
          ),
          SizedBox(height: 100, child: NotesListView()),
        ],
      ),
    );
  }
}
