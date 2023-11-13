import 'package:flutter/material.dart';
import 'package:pro_cv/utils/constants.dart';

card(
    {required BuildContext context,
    required imgLink,
    required title,
    required email,
    required date,
    required heure,
    imgCircle = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: imgCircle
                  ? CircleAvatar(backgroundImage: Image.asset(imgLink).image)
                  : Image.asset(
                      imgLink,
                      width: 40,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF554E4E)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(date), Text(heure)],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.edit_document,
                    size: 30,
                    color: myPurple,
                  ),
                  Icon(
                    Icons.remove_circle,
                    size: 30,
                    color: myPurple,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

cardNotification(
    {required BuildContext context,
    required imgLink,
    required title,
    required date,
    required heure,
    imgCircle = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: imgCircle
                  ? CircleAvatar(backgroundImage: Image.asset(imgLink).image)
                  : Image.asset(
                      imgLink,
                      width: 40,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      title,
                      style: TextStyle(color: Color(0xFF554E4E)),
                    ),
                  ),
                  Visibility(
                    visible: false,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(date), Text(heure)],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
