#include <InheritanceClassLib/childclass1.h>
#include <InheritanceClassLib/childclass2.h>
 
int main(int argc, char *argv[]){
    ChildClass1 childclass1;
    ChildClass2 childclass2;
    childclass1.test();
    childclass2.test();
    return 0;
}