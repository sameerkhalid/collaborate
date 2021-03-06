import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  // color: Colors.black54,
);

ShapeBorder kRoundedButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(50)),
);

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

kLoadingSpinner({Color color = Colors.white}) {
  return Align(
    alignment: Alignment.center,
    child: SpinKitThreeBounce(
      color: color ?? Colors.white,
      size: 20.0,
    ),
  );
}

var kTextFieldDecoration = InputDecoration(
  // hintText: 'Enter your password.',
  // labelText: 'Email',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  hintStyle: TextStyle(height: 1.5, fontWeight: FontWeight.w300),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
);

parseDateString(String dateString) {
  if (dateString.contains('T')) {
    dateString = dateString.replaceFirst(RegExp('T'), " ");
  }

  var timezoneOffset = DateTime.now().timeZoneOffset;
  var time_diff = new Duration(
      hours: timezoneOffset.inHours, minutes: timezoneOffset.inMinutes % 60);

  return DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateString).add(time_diff);
}

parseServerlessDateString(String dateString) {
  return DateFormat().add_yMd().add_Hms().parse(dateString);
}
