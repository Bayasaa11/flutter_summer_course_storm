import 'char_model.dart';

class TaskModel {
  String question = '';
  String pathImage = '';
  String answer = '';
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];



  TaskModel({ required this.pathImage,
    required this.question, required this.answer, this.arrayButtons= const []});

    void setWordFindChar( List<CharModel> puzzles ){
    this.puzzles=puzzles;
    }
    void setIsDone(){
      isDone=true;
    }
       fieldCompleteCorrect (){
      bool complete= puzzles.where((puzzle) => puzzle.currentValue==null ).isEmpty;
      if(!complete){
        isFull=false;
        return complete;
      }
      isFull=true;
      String answeredString =puzzles.map((puzzle) => puzzle.currentValue).join("");
      if (answeredString == answer){
        return complete;
      }

    }

    TaskModel clone(){
      TaskModel( answer: answer, pathImage: pathImage, question: question);
      return TaskModel(pathImage: pathImage, question: question, answer: answer);
    }
}