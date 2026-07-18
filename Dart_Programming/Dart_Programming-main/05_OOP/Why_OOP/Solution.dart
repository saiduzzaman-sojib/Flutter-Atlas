//THE SOLUTION: Instead of writing 100 different functions, we write ONE Class.
// This single block replaces userFunction(), newUserFunction(), and all future functions.
class UserAccount {
  String username;
  int amount;

  // This constructor creates the data for us.
  UserAccount(this.username, this.amount);

// THE FIX: We define the function name 'printInfo' ONLY ONCE here.
  // We do not need printSojib(), printNaim(), printSaiduzzaman()...
  // We just use this one name for everyone.
  void printInfo() {
    print("$username $amount");
  }
}

void main() {
  // 3. SCALABILITY: Creating 100 users is now just passing data, not writing new code.
  // We don't need to remember "userFunction" or "newUserFunction".
  UserAccount user1 = UserAccount("Sojib", 5000);
  UserAccount user2 = UserAccount("Saiduzzaman", 4000);
  UserAccount user3 = UserAccount("Naim", 9000);

  // 4. UNIFORMITY: Notice we call the EXACT SAME function name for everyone.
  // You don't have to remember "Which function belongs to Naim?"
  // You just ask user3 to print their own info.
  user1.printInfo();
  user2.printInfo();
  user3.printInfo();
}
//OOP allows you to hide data (Encapsulation). You can make the amount variable "private" so no one can touch it directly.
