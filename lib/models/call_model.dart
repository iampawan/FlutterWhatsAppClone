class CallModel {
  final String name;
  final String date;
  final String time;
  final String avatarUrl;

  CallModel({this.name, this.date, this.time, this.avatarUrl});
}

List<CallModel> callDummyData = [
  new CallModel(
      name: "Pawan Kumar",
      date: "(2) September 23",
      time: "15:30 AM",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new CallModel(
      name: "Harvey Spectre",
      date: "September 22",
      time: "17:30 PM",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
  new CallModel(
      name: "Mike Ross",
      date: "September 20",
      time: "5:00 AM",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
];
