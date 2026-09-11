class ClaimHistory {
  String? name;
  String? description;
  int? packageSize;
  DateTime? claimedAt;

  ClaimHistory({this.name, this.description, this.packageSize, this.claimedAt});

  String size() {
    if (packageSize == null) return "0";
    final mb = packageSize ?? 0;
    if (mb >= 1024) {
      double gb = mb / 1024;
      if (gb % 1 == 0) {
        return gb.toInt().toString();
      } else {
        return gb.toStringAsFixed(2);
      }
    } else {
      return "$mb";
    }
  }

  bool get isGB => (packageSize ?? 0) >= 1024;
}

class ClaimStatus {
  int timeLeft;
  int _timeStatus;

  ClaimStatus({this.timeLeft = 0, int timeStatus = 0})
    : _timeStatus = timeStatus;

  int get timeStatusValue =>_timeStatus;
  TimeStatus get timeStatus => switch (_timeStatus) {
    0 => TimeStatus.minutes,
    1 => TimeStatus.hours,
    _ => TimeStatus.days,
  };
}

// Minutes = 0,
// Hours = 1,
// Days = 2
enum TimeStatus { minutes, hours, days }
