import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

class NoteBodyEditor extends StatelessWidget {
  final TextEditingController textController;
  final bool autofocus;
  final Function onChanged;

  NoteBodyEditor({this.textController, this.autofocus, this.onChanged});

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.subtitle1;

    return TextField(
      autofocus: autofocus,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      style: style,
      decoration: InputDecoration(
        hintText: tr('editors.common.defaultBodyHint'),
        border: InputBorder.none,
        isDense: true,
      ),
      controller: textController,
      textCapitalization: TextCapitalization.sentences,
      scrollPadding: const EdgeInsets.all(0.0),
      onChanged: (_) => onChanged(),
    );
  }
}
