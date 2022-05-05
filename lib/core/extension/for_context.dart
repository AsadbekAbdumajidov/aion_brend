import 'package:flutter/cupertino.dart';

extension ForContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get h => mq.size.height;

  
}
