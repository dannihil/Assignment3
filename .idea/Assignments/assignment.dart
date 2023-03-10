import 'dart:io';


void main() {
  List<String> shoppingList = [];

  //Method
  void addItemToList(String text) {
    shoppingList.add(text);
  }

  bool isRunning = true;

  print("Going shopping? Want to make a shopping list? I can help!");
  while (isRunning) {
    print("-----------"); //seperation line
    print("What would you like to do?");
    print("1: Add item to the shopping list.");
    print("2. View the shopping list.");
    print("3. Nothing. Exit the program.");
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
