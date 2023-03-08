import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/edit_note_view.dart';
import 'custom_app_bar.dart';
class NoteItem extends StatelessWidget{
  const NoteItem({super.key});
  Widget build(BuildContext context){
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return const EditNoteView();
      }));
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration:BoxDecoration(
        color:const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    ListTile(
      title:  const Text('Flutter Tips', style: TextStyle(
    color: Colors.black,
    fontSize:26, 
  ),),
  subtitle:Padding(
    padding:const EdgeInsets.only(top:16,
    bottom:16,)
     Text('build your  career',
  style:TextStyle(
    color: Colors.black,fontSize: 20,
    )),),
  trailing: IconButton(
    onPressed: () {},
    icon: Icon(Icons.delete),
    color: Colors.black
    size:24,
  ) ,
  ),
  Padding(
    padding:const EdgeInsets.only(right: 24),
    child:Text(
    'May2,2023',
  style: TextStyle
  (Color:Colors.black.withOpacity(.4),
  fontSize: 16),
  ),
  ),
  
  ],
  ),
  
    ),
  );
}
}