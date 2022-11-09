// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class MainWidget extends StatefulWidget {
//   const MainWidget({super.key});

//   @override
//   State<MainWidget> createState() => _MainWidgetState();
// }

// class _MainWidgetState extends State<MainWidget> {
//   List todos = [];
//   String input = '';

//   createTodos() {
//     // CollectionReference documentReference = FirebaseFirestore.instance.collection('MyTodos').doc(input);

//     // DocumentReference documentReference =
//     //     Firestore.instance.collections('MyTodos').document(input);
//   }

//   deleteTodos() {}

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     todos.add('Item1');
//     todos.add('Item2');
//     todos.add('Item3');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('My todo')),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                   title: Text('Add todolist'),
//                   content: TextField(
//                     autofocus: true,
//                     onChanged: (String value) {
//                       input = value;
//                     },
//                   ),
//                   actions: <Widget>[
//                     TextButton(
//                         onPressed: () {
//                           setState(() {
//                             todos.add(input);
//                           });
//                           Navigator.of(context).pop();
//                         },
//                         child: Text('Add')),
//                   ],
//                 );
//               });
//         },
//         child: Icon(Icons.add, color: Colors.white),
//       ),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Dismissible(
//               key: Key(todos[index]),
//               child: Card(
//                 margin: EdgeInsets.all(8),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: ListTile(
//                   title: Text(todos[index]),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       setState(() {
//                         todos.removeAt(index);
//                       });
//                     },
//                   ),
//                 ),
//               ));
//         },
//       ),
//     );
//   }
// }
