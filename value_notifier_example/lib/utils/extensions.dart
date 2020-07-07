import 'package:flutter/widgets.dart';

extension NavigatorStateEx on NavigatorState {
  BuildContext get descendantContext => overlay.context;
}
