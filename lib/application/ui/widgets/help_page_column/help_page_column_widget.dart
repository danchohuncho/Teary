import 'package:flutter/material.dart';
import 'package:teary/application/ui/widgets/help_page_column/help_page_single_widget.dart';

abstract class HelpPageColumnWidget extends StatelessWidget {
  const HelpPageColumnWidget({Key? key}) : super(key: key);

  factory HelpPageColumnWidget.single({Key? key}) =>
      _HomePageColumnSingleWidget(
        key: key,
      );
}

class _HomePageColumnSingleWidget extends HelpPageColumnWidget {
  const _HomePageColumnSingleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HelpPageSingleWidget(),
      ],
    );
  }
}
