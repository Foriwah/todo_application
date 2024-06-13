class TodoModel {
  final String id;
  final String title;
  final String description;
  final String date;
  final String? startTime;
  final String? endTime;
  final String? status;

  TodoModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      this.endTime,
      this.startTime,
      this.status});
}
