import 'package:dashboard/utils/styles_app.dart';
import 'package:dashboard/views/widgets/custom_text_field.dart';
import 'package:flutter/widgets.dart';

class TitleTextField extends StatelessWidget{
  const TitleTextField({super.key, required this.title, required this.hintText});

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: StylesApp.styleMedium16(context),
        ),
        const SizedBox(height: 12,),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}