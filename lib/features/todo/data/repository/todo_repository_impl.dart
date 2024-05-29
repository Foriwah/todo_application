 
 import 'package:my_todo_app/features/todo/domain/models/todo_model.dart';
import 'package:my_todo_app/features/todo/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {  @override
  Future<TodoModel> addTodo(TodoModel todo) async  {
 
    throw UnimplementedError();
  }

  @override
  Future<TodoModel> deleteTodo(TodoModel todo) async {
    
    throw UnimplementedError();
  }

  @override
  Future<TodoModel> editTodo(TodoModel todo) async {
    
    throw UnimplementedError();
  }

  @override
  Future<List<TodoModel>> getAll() async{
  
    throw UnimplementedError();
  }
}
