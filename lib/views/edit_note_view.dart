import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
