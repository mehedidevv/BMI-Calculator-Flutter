void main(){
int addResulr=addNumber(2, 5);
int mulNumber=multiplyNumber(2, 5);

int higherFunction=higherOrderFunction(2, 5, addNumber);
print(higherFunction);

int higherFunction2=higherOrderFunction(2, 5, multiplyNumber);
print(higherFunction2);

print(addResulr);
print(mulNumber);

}
  Function higherOrderFunction=(int n1,int n2, Function Calculate){
  return Calculate(n1,n2);
  };


addNumber(int n1,n2){
  return n1+n2;
}

 multiplyNumber(int n1,n2){
return n1*n2;
}