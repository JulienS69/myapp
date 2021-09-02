import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.only(left: 25, top: 25),
         child: Container(
           width: 1870,
           height: 800,
           decoration: BoxDecoration(
              //color: Colors.black,
         ),
           child: Column(
             children: <Widget> [
               Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: SizedBox(child: Text("theparc", textAlign: TextAlign.left, style: TextStyle(color: Colors.red),), width: 2000,),
               ),
               SizedBox(
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 25),
                   child: Row(
                     children: [
                       Expanded(
                         flex: 3,
                         child: TextFormField(
                           decoration: InputDecoration(
                               labelText: 'name',
                               hintText: 'Entrer du texte',

                              //Permet de cacher le lettre counter
                              // counterStyle: TextStyle(height: double.minPositive),
                              // counterText: "",
                               border: OutlineInputBorder()),
                             validator: (String? value) {
                               if (value!.isEmpty) {
                                 return "Ce champ ne peut être vide !";
                               }
                               return null;
                             }
                         ),
                       ),
                       SizedBox(width: 25,),
                       Expanded(
                         flex: 1,
                         child: TextFormField(
                          decoration: const InputDecoration(
                          labelText: 'sitecode',
                          hintText: 'Entrer du texte',
                          border: OutlineInputBorder()),
                          validator: (String? value) {
                          if (value!.isEmpty) {
                          return "Ce champ ne peut être vide !";
                          }
                          return null;
                          }
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 25),
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child: TextFormField(
                             decoration: const InputDecoration(
                                 labelText: 'adresse',
                                 hintText: 'Entrer du texte',
                                 border: OutlineInputBorder()),
                             validator: (String? value) {
                               if (value!.isEmpty) {
                                 return "Ce champ ne peut être vide !";
                               }
                               return null;
                             }
                         ),
                       ),
                       SizedBox(width: 25,),
                       Expanded(
                         flex: 2,
                         child: TextFormField(
                             decoration: const InputDecoration(
                                 labelText: 'complement adresse',
                                 hintText: 'Entrer du texte',
                                 border: OutlineInputBorder()),
                             validator: (String? value) {
                               if (value!.isEmpty) {
                                 return "Ce champ ne peut être vide !";
                               }
                               return null;
                             }
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
         SizedBox(
           child: Padding(
             padding: const EdgeInsets.only(bottom: 25),
             child: Row(
               children: [
                 Expanded(
                   flex: 2,
                   child: TextFormField(
                       decoration: const InputDecoration(
                           labelText: 'code postal',
                           hintText: 'Entrer du texte',
                           border: OutlineInputBorder()),
                       validator: (String? value) {
                         if (value!.isEmpty) {
                           return "Ce champ ne peut être vide !";
                         }
                         return null;
                       }
                   ),
                 ),
                 SizedBox(width: 25,),
                 Expanded(
                   flex: 2,
                   child: TextFormField(
                       decoration: const InputDecoration(
                           labelText: 'city',
                           hintText: 'Entrer du texte',
                           border: OutlineInputBorder()),
                       validator: (String? value) {
                         if (value!.isEmpty) {
                           return "Ce champ ne peut être vide !";
                         }
                         return null;
                       }
                   ),
                 ),
                 SizedBox(width: 25,),
                 Expanded(
                   flex: 1,
                    // decoration: BoxDecoration(border: Border),
                     child: Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                       child: DropdownButtonFormField<String>(
                         icon: const Icon(
                           Icons.expand_more,
                         ),
                         hint: Text(
                           'France',
                         ),
                         onChanged: (String? newValue) {
                           },
                         items: <String>['France', 'Angleterre', 'Australie', 'Suede', 'Allemagne'].map(
                               (value) {
                             return DropdownMenuItem(
                               child: Text(value),
                               value: value,
                             );
                           },
                         ).toList(),
                        ),
                     ),
                   )
               ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 25),
           child: Padding(
             padding: const EdgeInsets.only(bottom: 25),
             child: Row(
               children: [
                 Expanded(
                   flex: 1,
                   child: TextFormField(
                       maxLines: 8,
                       decoration: const InputDecoration(
                           labelText: 'Description',
                           hintText: 'Description',
                           border: OutlineInputBorder()),
                       validator: (String? value) {
                         if (value!.isEmpty) {
                           return "Ce champ ne peut être vide !";
                         }
                         return null;
                       }
                   ),
                 ),
                 SizedBox(width: 25,),
                 SizedBox(
                   width: 900,
                   height: 220,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 850, bottom: 5),
                         child: Text("Contact", textAlign: TextAlign.left, style: TextStyle(color: Colors.red),),
                       ),
                       Expanded(
                         flex: 1,
                         child: DropdownButtonFormField<String>(
                           icon: const Icon(
                             Icons.add_circle_outline,
                           ),
                           hint: Text(
                             'Votre contact ?',
                           ),
                           onChanged: (String? newValue) {
                           },
                           items: <String>['test 1', 'test 2', 'test 3', 'test 4', 'test 5'].map(
                                 (value) {
                               return DropdownMenuItem(
                                 child: Text(value),
                                 value: value,
                               );
                             },
                           ).toList(),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 25),
                 child: Row(
                   children: [
                     Container(
                       width: size.width/2,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 25),
                         child: Column(
                           children: <Widget> [
                             Padding(
                               padding: const EdgeInsets.only(right: 855, bottom: 5),
                               child: Text("sesequipements", textAlign: TextAlign.left, style: TextStyle(color: Colors.red),),
                             ),
                             DropdownButtonFormField<String>(
                               icon: const Icon(
                                 Icons.add_circle_outline,
                               ),
                               hint: Text(
                                 'ajouterequipement',
                               ),
                               onChanged: (String? newValue) {
                               },
                               items: <String>['test 1', 'test 2', 'test 3', 'test 4', 'test 5'].map(
                                     (value) {
                                   return DropdownMenuItem(
                                     child: Text(value),
                                     value: value,
                                   );
                                 },
                               ).toList(),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
