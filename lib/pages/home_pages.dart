import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  CollectionReference tasksReference =
      FirebaseFirestore.instance.collection('tasks');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F6FF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 22.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenido, Aldo",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3C3550)),
                      ),
                      Text(
                        "Mis Tareas",
                        style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3C3550)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 12,
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20.0,
                              color: Color(0xff2c3550).withOpacity(0.6),
                            ),
                            hintText: "Buscar tarea ...",
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff2c3550).withOpacity(0.6),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
        // body: StreamBuilder(
        //   stream: tasksReference.snapshots(),
        //   builder: (BuildContext context, AsyncSnapshot snap) {
        //    if (snap.hasData) {
        //    QuerySnapshot collection = snap.data;
        //   List<QueryDocumentSnapshot> docs = collection.docs;
//
        //        List<Map<String, dynamic>> docsMap =
        //              docs.map((e) => e.data() as Map<String, dynamic>).toList();

        //      return ListView.builder(
        //      itemCount: docsMap.length,
        //       itemBuilder: (BuildContext context, int index) {
        //         return ListTile(
        //           title: Text(docsMap[index]["title"]),
        //         );
        //      },
        //    );
        // }
        //return Center(
        // child: CircularProgressIndicator(),
        //);
        //},
        //),
        );
  }
}
