

import 'package:my_todo_app/todo/domain/models/board_model.dart';

abstract class BoardRepository{

//ADD BOARD
Future<BoardModel> addBoard(BoardModel board);

//DELETE BOARD
Future<BoardModel> deleteBoard(BoardModel board);

//ADD BOARD
Future<BoardModel> geAllBoard(BoardModel board);


}