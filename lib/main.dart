import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_npp_app/dataService.dart';
import 'package:flutter_npp_app/types.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeWidgetState();
  }
}

class _HomeWidgetState extends State<Home> {
  DateTime selectedDate = DateTime.now();
  final DataService dataService = DataService();
  final DateFormat formatter = DateFormat('dd.MM.yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Смена ', style: TextStyle(fontSize: 20)),
              WidgetSpan(child: Icon(Icons.group, size: 20))
            ]),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
              child: CalendarCarousel(
            daysHaveCircularBorder: false,
            locale: 'ru_Ru',
            selectedDateTime: selectedDate,
            onDayPressed: (DateTime date, List<Event> events) =>
                {selectedDate = date, super.setState(() {})},
          )),
          Center(
              child: Center(
                  child: Text(formatter.format(selectedDate),
                      style: TextStyle(fontSize: 35)))),
          Center(
            child: Table(
              border: TableBorder.all(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
              children: [
                for (var i in Period.values)
                  TableRow(children: [
                    TableCell(
                        child: Center(
                            child: Text(Types.periodMap[i],
                                style: TextStyle(fontSize: 25)))),
                    TableCell(
                        child: Center(
                            child: Text(
                                Types.dayTypeMap[
                                    dataService.getDayType(selectedDate, i)],
                                style: TextStyle(fontSize: 25))))
                  ])
              ],
            ),
          )
        ],
      )),
    );
  }
}
