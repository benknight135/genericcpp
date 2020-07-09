#ifndef BASECLASS_H
#define BASECLASS_H

#include "inheritanceclassExport.h"
#include <iostream>

class INHERITANCECLASS_EXPORTS BaseClass
{
public:
    BaseClass();

    virtual void test() = 0;

    ~BaseClass();
};

#endif //BASECLASS_H