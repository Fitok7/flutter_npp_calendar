enum Period { A, B, V, G, D }

enum DayType { FIRST, SECOND, THIRD, DAY_OFF, REHAB }

class Types {
  static const Map<Period, String> periodMap = {
    Period.A: 'А',
    Period.B: 'Б',
    Period.V: 'В',
    Period.G: 'Г',
    Period.D: 'Д',
  };

  static const Map<DayType, String> dayTypeMap = {
    DayType.FIRST: '1',
    DayType.SECOND: '2',
    DayType.THIRD: '3',
    DayType.DAY_OFF: 'Выходной',
    DayType.REHAB: 'Реабилитация',
  };
}
