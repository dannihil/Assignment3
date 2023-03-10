import 'dart:io';
import 'methods.dart' as methods;


void main() {
  List<String> shoppingList = [];

  //Method adds item to shoppingList
  void addItemToList(String text) {
    shoppingList.add(text);
  }


  //Program loop
  print("Going shopping? Want to make a shopping list? I can help!");
  bool isRunning = true;
  while (isRunning) {
    methods.taskMenu();
    String inputTask = stdin.readLineSync();
    int task = int.parse(inputTask);
    if (task == 1) {
      stdout.write("Enter an item you wish to add to your shopping list: ");
      addItemToList(stdin.readLineSync());
      print("'${shoppingList.last}' has been added to your list.");
    } else if (task == 2) {
      int count = 0;
      print("Here is how your list looks like.");
      for (int i = 0; i < shoppingList.length; i++) {
        count++;
        print("$count. ${shoppingList[i]}");
      }
    } else {
      print("You chose to exit the program.");
      print("Good bye!");
      isRunning = false;
      break;
    }
  }

}
