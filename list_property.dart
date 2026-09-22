// list = collection of objects , it can be editable 
void main(){
 List<String> a= ["apple","pineapple","melon"];
 a.addAll(["peach","cherry","avocado"]);
 print(a.reversed);
 print(a);


//  to add another  multiple element use [] and a.addall , to add a single element use a.add 


List<int> b = [1,2,3,4];
b.addAll([6,7]);
print(b);

}

//  methoed  have bracket ()
//  properties dont have brackets

            // property
//length : they show the total number of elements in list 
//first  : they show the first element 
//last   : they show the last element 
//isempty  : show if the list has no element 
//isnotempty : return if the list contain atleast one element
//reversed : show the ouptput in the reverse order 

          // methoed 
//  .add() : add only one value at the end 
//  .addall(): add multiple value at the end 
//  .remove(): remove the value and show true if it is removed 
//  .removeat():removes the specified index
//  .contains():output true is the specified value is at index
