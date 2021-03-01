import 'package:daily_mood/screens/summary.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/summary": (BuildContext context) => Summary(title: "Recapitulatif"),
};
