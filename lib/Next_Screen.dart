import 'package:flutter/material.dart';

class Next_Sreen extends StatefulWidget {
  const Next_Sreen({super.key,required this.name});
final String name;
  @override
  State<Next_Sreen> createState() => _Next_SreenState();
}

class _Next_SreenState extends State<Next_Sreen> {

  var isSelected= false;
 String name="Raju";
  @override
  Widget build(BuildContext context) {
    var dialog=AlertDialog(
      title:Text("Name Cheak "),
      content: Text("Your Name ${widget.name}"),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.pop(context);},
            child:Text("Yes ")),
        TextButton(
            onPressed: (){
              Navigator.pop(context);},
            child:Text("No ")),
      ],
    );

    return Scaffold(
      body: Center(
          child:
          Column(
            children: [
              Text("Name:${widget.name}"),
              Container(
                width: 100,
                height: 30,
                color: Colors.pink,
                child: Center(
                  child: InkWell(
                    onTap: (){showDialog(context: context, builder: (context) =>dialog);},
                      child: Text("Cheaking",style: TextStyle(color: Colors.white),)),
                ),
              ),
              Checkbox(value: isSelected,

                  //semanticLabel: "raju",
                  //autofocus: true,
                  //splashRadius: 33,
                  //hoverColor: Colors.pink,
                  //checkColor: Colors.teal,
                  //mouseCursor: MouseCursor.defer,
                 activeColor: Colors.redAccent,
                  onChanged: (bool? value){
                setState(() {
                  isSelected = value!;
                });
              }),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.blue,
                      child: Center(child: Text("1")),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.redAccent,
                      child: Center(child: Text("2")),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.green,
                      child: Center(child: Text("3")),
                    ),
                  ),
                ],
              ),
             Container(
               width: 200,
               height: 300,
               child: SingleChildScrollView(
                 child: ExpansionTile(
                   textColor: Colors.pink,
                   //trailing: Icon(Icons.arrow_downward),
                   //leading: Icon(Icons.person),
                     title: Text(name),
                   children: [
                     ListTile(
                       title: Text("Rakib"),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Rakib";
                         });
                       },
                     ),
                     ListTile(
                       title: Text("Mim"),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Mim";
                         });
                       },
                     ),
                     ListTile(
                       title: Text("Sakib"),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Sakib";
                         });
                       },
                     ),
                     ListTile(
                       title: Text("Makib"),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Rakib";
                         });
                       },
                     ),
                     ListTile(
                       title: Text("Lakib"),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Lakib";
                         });
                       },
                     ),
                     ListTile(
                       title: Text("Nakib",style: TextStyle(color: Colors.pink),),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Nakib";
                         });
                       },
                     ),
                     ListTile(
                       title: Text("Rakib"),
                       subtitle: Text("one"),
                       trailing: Icon(Icons.male),
                       onTap: (){
                         setState(() {
                           this.name="Rakib";
                         });
                       },
                     ),
                   ],
                  ),
               ),
             )
            ],
          )),
    );
  }
}
