import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/screens/crops/crop_details.dart';
import 'package:get/get.dart';
import '/database/data.dart';

class crop_gallery extends StatefulWidget {
  const crop_gallery({super.key});

  @override
  State<crop_gallery> createState() => _crop_galleryState();
}

class _crop_galleryState extends State<crop_gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 130,
        child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: crops.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    crop_detail(index: index))));
                      },
                      child: Image(
                        image: NetworkImage(crops[index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
