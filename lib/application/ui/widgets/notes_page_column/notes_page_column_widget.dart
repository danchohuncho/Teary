import 'package:flutter/material.dart';
import 'package:teary/application/ui/widgets/help_page_column/help_page_single_widget.dart';
import 'package:teary/application/ui/widgets/notes_page_column/notes_page_single_widget.dart';

abstract class NotesPageColumnWidget extends StatelessWidget {
  const NotesPageColumnWidget({Key? key}) : super(key: key);

  factory NotesPageColumnWidget.single({Key? key}) =>
      _NotesPageColumnSingleWidget(
        key: key,
      );
}

class _NotesPageColumnSingleWidget extends NotesPageColumnWidget {
  const _NotesPageColumnSingleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        NotesPageSingleWidget(),
      ],
    );
  }
}
