import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gmail/messages.dart';
class MyHomePage extends StatefulWidget{
 const MyHomePage({super.key, required this.title});
  final String title;

State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.red,
        foregroundColor:Colors.white,
        title:Text(widget.title),
        actions:[
          IconButton(
             onPressed:(){},
           icon: const Icon(Icons.search)
           ),
        ],
      ),
  
      body:ListView.builder(
        itemCount:messages.length,
        itemBuilder:(context,index){
          return ListTile(
            onTap: (){},
            shape:Border(
              bottom:BorderSide(color:Colors.grey,width:0.3) 
              ),
              isThreeLine: true,
            leading:CircleAvatar(
              radius:25,
            backgroundColor: Colors.primaries[
            Random().nextInt(Colors.primaries.length)
              ].shade200,

              foregroundColor: Colors.black,
              child:Text(messages[index]["title"]![0]),
              ),
            title:Text(messages[index]["title"]!),
            subtitle:Text(messages[index]["body"]!,
             overflow: TextOverflow.ellipsis,
               maxLines:2,
            ),
             trailing:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  TimeOfDay.fromDateTime(
                    DateTime.parse(messages[index]!["date"].toString())
                  ).format(context)
                ),
                const Icon(Icons.star_outline),
            
              ],)
          );
  }),

  // drawer
  drawer:Drawer(
    child:ListView(
      children: [
        ListTile(
          title:Text("Email",style:TextStyle(
            color:Colors.red,
           fontSize:Theme.of(context).textTheme.titleLarge?.fontSize
          ),),
        ),
        const Divider(),
       const ListTile(
          leading:Icon(Icons.all_inbox),
          title:Text('All inboxes'),
        
        ),
         const ListTile(
          leading:Icon(Icons.inbox),
          title:Text("Primary"),
        ),
         const ListTile(
          leading:Icon(Icons.group_outlined),
          title:Text("Social"),
         ),
        const ListTile(
          leading:Icon(Icons.discount_outlined),
          title:Text("Promotions"),
        
          trailing:Chip(
            backgroundColor: Colors.lightGreen,
            label:Text("99+ new")
        ), 
        ),
     const Divider(),
        const ListTile(
          leading:Icon(Icons.star_outline),
          title:Text("Starred"),
        ),
        const ListTile(
          leading:Icon(Icons.access_time),
          title:Text("Snoozed"),
        ),
        const ListTile(
          leading:Icon(Icons.label_important_outline),
          title:Text("Important"),
        ),
        const ListTile(
          leading:Icon(Icons.send),
          title:Text("Sent"),
        ),
        const ListTile(
          leading:Icon(Icons.schedule_send_outlined),
          title:Text("Schedule"),

        ),
        const ListTile(
          leading:Icon(Icons.outbox_outlined),
          title:Text("OutBox"),
        ),
        const ListTile(
          leading:Icon(Icons.inbox),
          title:Text("Drafts"),
          trailing:Text("99+"),

        ),
        const ListTile(
          leading:Icon(Icons.mail_outlined),
          title:Text("All mail"),
        ),
        const ListTile(
          leading:Icon(Icons.info_outline),
          title:Text("spam"),
        ),
        const ListTile(
          leading:Icon(Icons.delete_outline),
          title:Text("Trash"),
        ),
      ],),
      

  ),
  floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.red,
    onPressed: (){},
    child:Icon(Icons.edit),

),
    
  
    );
  }
}