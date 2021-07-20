import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:bloco_de_notas/src/shared/models/nota_model.dart';
import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        color: AppColors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.zero,
              child: Flexible(
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          note.title,
                          style: TextStyles.white24w700Roboto,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: note.noteColor,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flexible(
                child: Text(
                  note.description,
                  style: Theme.of(context).textTheme.headline6,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
