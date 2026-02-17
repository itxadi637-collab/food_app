// import 'package:flutter/material.dart';
//
// class FoodApp extends StatelessWidget {
//   const FoodApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(Icons.menu),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 15),
//             child: Container(
//               height: 40,
//               width: 40,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/profile.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//
//         children: [
//           Padding(padding: EdgeInsets.only(left: 10),),
//
//           const SizedBox(height: 20),
//
//           Text(
//             "Food For You",
//             style: Theme.of(context)
//                 .textTheme
//                 .displaySmall!
//                 .copyWith(fontWeight: FontWeight.bold),
//
//           ),
//           const SizedBox(height: 20,),
//           Row(
//             children: [
//               Expanded(child: Container
//                 (margin: EdgeInsets.symmetric(horizontal: 15,
//               ),
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
//               color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(offset: const Offset(0, 5),
//                     blurRadius: 5,
//                     color: Colors.black.withOpacity(.1),
//
//
//
//                   )
//                 ]
//               ),
//                 child: TextField(decoration: InputDecoration(
//                   hintText: 'Search Food',
//                   contentPadding: EdgeInsets.symmetric(vertical: 10),
//                   prefixIcon: Icon(Icons.search,),
//
//                 ),),
//               )),
//               Container(
//                 padding: EdgeInsets.all(5),
//                 margin: EdgeInsets.only(right: 15),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 5),
//                     spreadRadius: 1,
//                     blurRadius: 5,
//                     color: Colors.black.withOpacity(.1)
//
//
//                   )
//                 ]
//
//               ),
//               child: Icon(Icons.filter_list, size: 20,),
//               )
//
//             ],
//           ),
//           Padding(padding: EdgeInsets.only(top: 10),),
//           ListTile(
//             title: const Text('Feature Food'),
//             titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
//             trailing: const Text('View All'),
//
//           )
//         ],
//       ),
//     );
//   }
// }


