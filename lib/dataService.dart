import 'dart:collection';

import 'package:flutter_npp_app/types.dart';

class DataService {
  DataService() : dataMap = generateValues();

  final Map<DayInPeriod, DayType> dataMap;

  DayType getDayType(DateTime dateTime, Period period) {
    int interval = (dateTime.difference(new DateTime(1,1,1,0,0)).inDays + 1) % 15 + 1;
    return dataMap[DayInPeriod(interval, period)];
  }

  static Map<DayInPeriod, DayType> generateValues() {
    Map<DayInPeriod, DayType> dataMap = new HashMap<DayInPeriod, DayType>();
    for (int monthDay = 1; monthDay <= 15; monthDay++) {
      switch (monthDay) {
        case 1:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.THIRD;
            break;
          }
        case 2:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.REHAB;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.DAY_OFF;
            break;
          }
        case 3:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.DAY_OFF;
            break;
          }
        case 4:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.SECOND;
            break;
          }
        case 5:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.REHAB;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.SECOND;
            break;
          }
        case 6:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.SECOND;
            break;
          }
        case 7:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.DAY_OFF;
            break;
          }
        case 8:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.REHAB;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.FIRST;
            break;
          }
        case 9:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.FIRST;
            break;
          }
        case 10:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.FIRST;
            break;
          }
        case 11:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.REHAB;
            break;
          }
        case 12:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.DAY_OFF;
            break;
          }
        case 13:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.THIRD;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.DAY_OFF;
            break;
          }
        case 14:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.REHAB;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.THIRD;
            break;
          }
        case 15:
          {
            dataMap[DayInPeriod(monthDay, Period.A)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.B)] = DayType.FIRST;
            dataMap[DayInPeriod(monthDay, Period.V)] = DayType.SECOND;
            dataMap[DayInPeriod(monthDay, Period.G)] = DayType.DAY_OFF;
            dataMap[DayInPeriod(monthDay, Period.D)] = DayType.THIRD;
            break;
          }
      }
    }
    return dataMap;
  }
}

class DayInPeriod {
  int day;
  Period period;

  DayInPeriod(this.day, this.period);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayInPeriod &&
          runtimeType == other.runtimeType &&
          day == other.day &&
          period == other.period;

  @override
  int get hashCode => day.hashCode ^ period.hashCode;
}
