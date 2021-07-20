import 'dart:ui';

import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/models/nota_model.dart';
import 'package:flutter/material.dart';

import 'widgets/empty_home_body.dart';
import 'widgets/notes_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Note> notes = <Note>[
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
    Note(
      title: "Alencar",
      description:
          "Nossa 5º semana de aula começa hoje Nossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hojeNossa 5º semana de aula começa hoje",
      noteColor: AppColors.ciano,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notes.isEmpty
          ? EmptyHomeBody()
          : NotesBody(
              notesList: notes,
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => NewNotePage(),
            ),
          );
        },
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0.0, 1.0),
                blurRadius: 18.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0.0, 6.0),
                blurRadius: 10.0,
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0.0, 3),
                  blurRadius: 5.0,
                  spreadRadius: -1.0),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
