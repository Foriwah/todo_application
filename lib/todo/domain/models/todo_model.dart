class TodoModel {
  final String id;
  final String title;
  final String description;
  final String date;
  final String priority;
  final String? startTime;
  final String? endTime;
  final String? status;

  TodoModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      required this.priority,
      this.endTime,
      this.startTime,
      this.status});
}
