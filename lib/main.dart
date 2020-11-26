import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(SelectionShape());

class SelectionShape extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectionShapePicker(),
    );
  }
}

class SelectionShapePicker extends StatefulWidget {
  @override
  SelectionShapePickerState createState() => SelectionShapePickerState();
}

class SelectionShapePickerState extends State<SelectionShapePicker> {
  DateRangePickerSelectionShape _selectionShape;

  @override
  @override
  void initState() {
    _selectionShape = DateRangePickerSelectionShape.circle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        margin: const EdgeInsets.fromLTRB(40, 150, 40, 150),
        child: SfDateRangePicker(
          view: DateRangePickerView.month,
          selectionShape: _selectionShape,
          onSelectionChanged: selectionChanged,
          initialSelectedDate: DateTime.now(),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void selectionChanged(
      DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
    setState(() {
      _selectionShape = DateRangePickerSelectionShape.rectangle;
    });
  }
}
