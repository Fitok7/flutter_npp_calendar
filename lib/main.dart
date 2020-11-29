import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_npp_app/dataService.dart';
import 'package:flutter_npp_app/types.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [const Locale('ru')],
    locale: const Locale('ru'),
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
              child: SfCalendar(
                  selectionDecoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    shape: BoxShape.rectangle,
                  ),
                  timeZone: 'Europe/Moscow',
                  view: CalendarView.month,
                  onTap: (calendarTapDetails) => {
                        selectedDate = calendarTapDetails.date,
                        super.setState(() {})
                      },
                  showNavigationArrow: true,
                  initialSelectedDate: selectedDate)),
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
