part of 'note_model.dart';

import 'package:flutter/services.dart';
import 'package:flutter_application_2/models/note_model.dart';

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  final int typeId = 0;
  NoteModel read( BinaryReader reader){
    final numOffields=reader.readByte()
    final fields=<int,dynamic>{
      for(int i=0;i<numOffields;i++) reader.readByte():reader.read(),
    };
return NoteModel(title: fields[0]as String, subTitle: fields[1]as String, data: fields[2] as String, color: fields[3]as int,);

  }
  void Write(BinaryWriter writer,NoteModel obj){
    writer 
    ..writeByte(4)
    ..writeByte(4)
    ..writeByte(obj.title)
    ..writeByte(1)
    ..writeByte(obj.subTitle)
    ..writeByte(2)
    ..writeByte(obj.data)
    ..writeByte(3)
    ..writeByte(obj.color);
  }
}
