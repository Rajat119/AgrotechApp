import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '/database/data.dart';
// import 'db.dart';

class crop_detail extends StatefulWidget {
  crop_detail({super.key, required this.index});

  int index;

  @override
  State<crop_detail> createState() => _crop_detailState();
}

class _crop_detailState extends State<crop_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.04, 60, 15, 0),
              height: MediaQuery.of(context).size.height * 0.27,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: NetworkImage(crops[widget.index]['image']),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.04, 0, 0, 0),
              child: Text(
                crops[widget.index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.04, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Type : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      crops[widget.index]['type'],
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.04, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          crops[widget.index]['desc'],
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
