#include "component1.hh"

int Bar::foo(){
    new float(); // memory leak

    int x;       // unassigned variable
    return x;
}
