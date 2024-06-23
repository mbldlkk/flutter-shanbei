// demoStack() {
//   return Scaffold(
//       appBar: AppBar(
//         title: const Text("StackAlignmentExample"),
//       ),
//       body:
//           // Center(
//           // child:
//           Column(
//         children: [
//           Stack(
//             alignment: Alignment.topLeft,
//             children: [
//               const Text("asdsa"),
//               // CircleAvatar(
//               //   backgroundImage: AssetImage("images/1.jpg"),
//               //   radius: 100.0,
//               // ),
//               Container(
//                 decoration: const BoxDecoration(color: Colors.black38),
//                 child: const Text(
//                   "StackAlignment",
//                   style: TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       )

//       // ),
//       );
// }

// demoStack2() {
//   return Container(
//     padding: const EdgeInsets.all(15.0),
//     child: Column(children: [
//       const Text(
//         "classify",
//         style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
//       ),
//       // SencondSection(),
//       // wordDesSection(),
//       // SentenceSection(),
//       // WordNoteSection(),
//       SizedBox(
//         height: 30,
//         child: Stack(
//           alignment: Alignment.center,
//           // fit: StackFit.loose,
//           children: [
//             // Text("asd"),
//             // SizedBox(
//             //   width: 400,
//             //   height: 300,
//             // ),
//             Positioned(
//                 top: 10,
//                 height: 20,
//                 right: 10,
//                 left: 10,
//                 // width: double.infinity,
//                 child: Row(
//                   children: [
//                     // Expanded(
//                     //   child:
//                     ElevatedButton.icon(
//                       onPressed: () {},
//                       label: const Text('asda'),
//                       icon: const Icon(Icons.star),
//                     ),
//                     // )
//                   ],
//                 )),
//             const Text("asd"),
//             const SizedBox(
//               width: 400,
//               height: 300,
//             )
//           ],
//         ),
//       )
//     ]),
//   );
// }
