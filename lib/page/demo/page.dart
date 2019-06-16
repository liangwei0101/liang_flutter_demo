import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DemoPage extends Page<DemoState, Map<String, dynamic>> {
  DemoPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<DemoState>(
                adapter: null,
                slots: <String, Dependent<DemoState>>{
                }),
            middleware: <Middleware<DemoState>>[
            ],);

}
