import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:untitled/screens/crops/crop_details.dart';
import '/database/data.dart';

class crop_guide_card extends StatefulWidget {
  crop_guide_card({super.key, required this.index});

  int index;

  @override
  State<crop_guide_card> createState() => _crop_guide_cardState();
}

class _crop_guide_cardState extends State<crop_guide_card> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.05),
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
                        image: NetworkImage(crops[widget.index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        crops[widget.index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                        decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Type: ${crops[widget.index]['type']}"),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => crop_detail(
                                      index: widget.index,
                                    )));
                      },
                      icon: Icon(Icons.arrow_forward))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
