int module1(){
    new float(); // memory leak

    int x;       // unassigned variable
    return x;
}
