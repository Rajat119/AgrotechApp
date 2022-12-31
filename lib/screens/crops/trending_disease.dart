// import 'package:file_q/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '/database/data.dart';

class trending_disease extends StatefulWidget {
  const trending_disease({super.key});

  @override
  State<trending_disease> createState() => _trending_diseaseState();
}

class _trending_diseaseState extends State<trending_disease> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 120,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: diseases.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04),
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.035),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(diseases[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          diseases[index]['name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 9, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent.withOpacity(0.1)),
                          child: Text(
                            diseases[index]['type'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 101, 90, 90),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        )
                      ],
                    )
                  ],
                ))),
      ),
    );
  }
}
