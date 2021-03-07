class Day {
  String day;
  String time;
  String name;
  String date;
  Day({this.day, this.time, this.name, this.date});
  Day.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'];
    name = json['name'];
    date = json['date'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['time'] = this.time;
    data['name'] = this.name;
    data['date'] = this.date;
    return data;
  }
}