import 'dart:convert';
import 'dart:ui';

class Note {
  String title;
  String description;
  Color noteColor;
  Note({
    required this.title,
    required this.description,
    required this.noteColor,
  });

  Note copyWith({
    String? title,
    String? description,
    Color? noteColor,
  }) {
    return Note(
      title: title ?? this.title,
      description: description ?? this.description,
      noteColor: noteColor ?? this.noteColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'noteColor': noteColor.value,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'],
      description: map['description'],
      noteColor: Color(map['noteColor']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Note.fromJson(String source) => Note.fromMap(json.decode(source));

  @override
  String toString() =>
      'Note(title: $title, description: $description, noteColor: $noteColor)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Note &&
        other.title == title &&
        other.description == description &&
        other.noteColor == noteColor;
  }

  @override
  int get hashCode =>
      title.hashCode ^ description.hashCode ^ noteColor.hashCode;
}
