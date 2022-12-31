import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:untitled/widget/crop_guide_card.dart';
import '/database/data.dart';

class crop_guide extends StatefulWidget {
  const crop_guide({super.key});

  @override
  State<crop_guide> createState() => _crop_guideState();
}

class _crop_guideState extends State<crop_guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 11, 221, 18).withOpacity(0.15)
              color: Colors.white),
          padding: EdgeInsets.fromLTRB(
              13, MediaQuery.of(context).size.height * 0.1, 13, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crop Guide",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Search for a crop",
                    fillColor: Colors.transparent.withOpacity(0.15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: crops.length,
                    itemBuilder: (context, index) => Container(
                      child: crop_guide_card(
                        index: index,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
