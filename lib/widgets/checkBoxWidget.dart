import 'package:flutter/material.dart';
import 'package:project/widgets/responsive.dart';

class CheckBoxWidget extends StatefulWidget {
  final String text;

  CheckBoxWidget({super.key, required this.text});

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        Expanded(
          child: Text(
            widget.text,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ||
                      Responsive.isDesktopLarge(context)
                  ? 14
                  : 12,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
