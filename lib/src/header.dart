import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

///Header of the [AwesomeDialog]
class AwesomeDialogHeader extends StatelessWidget {
  ///Constructor of the [AwesomeDialogHeader]
  const AwesomeDialogHeader({
    required this.dialogType,
    required this.loop,
    Key? key,
  }) : super(key: key);

  ///Defines the type of [AwesomeDialogHeader]
  final DialogType dialogType;

  ///Defines if the animation loops or not
  final bool loop;

  @override
  Widget build(BuildContext context) {
    switch (dialogType) {
      case DialogType.info:
        return const Icon(Icons.info, color: Colors.blueAccent, size: 20,);
      case DialogType.infoReverse:
        return const Icon(Icons.info_outline, color: Colors.blueAccent, size: 20);

      case DialogType.question:
        return const Icon(Icons.question_mark_outlined, color: Colors.grey, size: 20);
      case DialogType.warning:
        return const Icon(Icons.warning, color: Colors.yellow, size: 20);
      case DialogType.error:
        return const Icon(Icons.error, color: Colors.red, size: 20);
      case DialogType.success:
        return const Icon(Icons.thumb_up, color: Colors.green, size: 20);
      case DialogType.noHeader:
        return const SizedBox.shrink();
    }
  }
}
