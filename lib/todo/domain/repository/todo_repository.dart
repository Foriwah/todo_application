
import 'package:my_todo_app/todo/domain/models/todo_model.dart';

abstract class TodoRepository{

  // ADD TODO
Future <TodoModel> addTodo(TodoModel todo);

  // EDIT TODO
Future <TodoModel> editTodo(TodoModel todo);
  // DELETE
Future <TodoModel> deleteTodo(TodoModel todo);

  //GET ALL TODOS
  Future<List<TodoModel>> getAll ();
}