class Model {
  String? image;
  String? title;
  String? date;

  Model(this.image, this.date, this.title);

  static List<Model> getModelData() {
    return [
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist2.png", "15/12/2022", "Office Work List"),
      Model("images/todolist3.png", "17/12/2022", "Day Task"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist2.png", "15/12/2022", "Office Work List"),
      Model("images/todolist3.png", "17/12/2022", "Day Task")
    ];
  }

  static List<Model> getAllTaskModelData() {
    return [
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
      Model("images/todolist1.png", "10/12/2022", "Online Class Routine"),
    ];
  }
}
