import 'package:flutter/material.dart';
import 'package:os_project/Texts.dart';

class StudentCard extends StatelessWidget {
  final String image;
  final String name;
  final String field;
  final int year;
  const StudentCard({Key key, this.image, this.name, this.field, this.year}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: 110,
              height: 110,
              color: Theme.of(context).disabledColor,
              child: Image.network(
                image,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes : null,
                    ),
                  );
                },
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts(
                name,
                fontSize: 22,
                bold: true,
              ),
              if (year != null)
                Texts(
                  year.toString(),
                ),
              Texts(
                field,
                fontSize: 16,
                regular: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
