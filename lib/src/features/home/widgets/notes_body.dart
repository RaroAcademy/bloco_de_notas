import 'package:bloco_de_notas/src/shared/models/nota_model.dart';
import 'package:flutter/material.dart';

import 'note_widget.dart';

class NotesBody extends StatefulWidget {
  final List<Note> notesList;

  const NotesBody({
    Key? key,
    required this.notesList,
  })  : assert(notesList.length > 0),
        super(key: key);

  @override
  _NotesBodyState createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  double _alignmentY = 0;
  bool _handleScrollNotification(ScrollNotification notification) {
    final ScrollMetrics metrics = notification.metrics;
    _alignmentY = -1 + (metrics.pixels / metrics.maxScrollExtent) * 2;

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: _handleScrollNotification,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(),
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.notesList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return NoteWidget(
                            note: widget.notesList[index],
                          );
                        },
                      ),
                    ]),
                  ),
                  Container(
                    alignment: Alignment(1.05, _alignmentY),
                    padding: EdgeInsets.only(right: 5),
                    child: Container(
                      height: 100,
                      width: 7.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF1F0FD),
                            Color(0xFFAFACF3),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
