// do, while, for, and other looping constructs are not allowed
// if is the only allowed branching construct; additionally you will need command X
// functions are not allowed

#include <iostream> // required for console input and output
#include <chrono> //required for getting system time

using namespace std; // allows unqualified use of identifiers of namespace std

int main(int argc, const char * argv[]) {
    char answer;
    unsigned long int max = 1000,
    // ... more declarations go here; separate them by commata; close with semicolon
    
    cout << "Random seed the generator (y/n)? " << flush;
    cin >> answer;
    if (answer == 'y')
    // your code goes here ...
        
        // the following function calls retrieve system time and cast it to milliseconds ...
        =  chrono::duration_cast<chrono::milliseconds>(chrono::system_clock::now().time_since_epoch()).count();
    return 0;
}
