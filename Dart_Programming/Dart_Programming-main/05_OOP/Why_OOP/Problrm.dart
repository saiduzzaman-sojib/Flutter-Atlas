String  user="sojib";
int amount=5000;

void userFunction()
{
    String user="Saiduzzaman";
    int amount=4000;
    print("$user $amount");
}
void newUserFunction()
{
  String user="Naim";
  int amount=9000;
  print("$user $amount");
}
int main ()
{
  userFunction();
  newUserFunction();
  print("$user  $amount");
  return 0;
}
// This code create a problem that if we create 100 new user then
// we shound remember the function name its really deficult ,So remembering 
// this problem the concept of OOP is born

//Also the safety issu ,if anyone accidently write the amount=-4000 anywhere in the function there is now way to stop

