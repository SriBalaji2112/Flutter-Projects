class CallModels {
  final String name;
  final String time;
  final int type;
  final String pic;

  CallModels(
      {required this.name,
      required this.time,
      required this.type,
      required this.pic});
}

List<CallModels> callData = [
  new CallModels(
    name: "Balaji",
    type: 0,
    time: "10.30 PM",
    pic: "https://randomuser.me/api/portraits/men/0.jpg",
  ),
  new CallModels(
    name: "Sowmiya",
    type: 1,
    time: "9.00 PM",
    pic: "https://randomuser.me/api/portraits/women/7.jpg",
  ),
  new CallModels(
    name: "Prithiv",
    type: 1,
    time: "9.00 PM",
    pic: "https://randomuser.me/api/portraits/men/10.jpg",
  ),
  new CallModels(
    name: "Selvi",
    type: 0,
    time: "9.00 PM",
    pic: "https://randomuser.me/api/portraits/women/15.jpg",
  ),
  new CallModels(
    name: "Santhanam",
    type: 0,
    time: "9.00 PM",
    pic: "https://randomuser.me/api/portraits/men/15.jpg",
  ),
];
