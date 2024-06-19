
class BoardModel{
  final String id;
  final String name;
  final String color;
  final int? taskNumnber;

  BoardModel({
    required this.id,
    required this.name,
    required this.color,
    this.taskNumnber
  });


}