int module2(){
    new float(); // memory leak

    int x;       // unassigned variable
    return x;
}
