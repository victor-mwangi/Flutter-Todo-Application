class Todo {
  String id;
  String todoText;
  bool isCompleted;

  Todo({required this.id, required this.todoText, this.isCompleted = false});

  static List<Todo> todos() {
    return [
      Todo(id: "1", todoText: "Create Flutter Todo App"),
      Todo(id: "2", todoText: "Publish Todo App"),
      Todo(id: "3", todoText: "Create More Flutter Apps"),
    ];
  }
}
