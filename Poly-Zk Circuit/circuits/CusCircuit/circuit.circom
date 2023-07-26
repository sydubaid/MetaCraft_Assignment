pragma circom 2.0.0;


template CusCircuit () {

    // signal inputs
    signal input a;
    signal input b;

    // signal from gates
    signal x;
    signal y;

    // signal output 
    signal output q;

    // component used to create Custom Circuit
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    // Circuit Logic
        // And Gate
    andGate.a <== a;
    andGate.b <== b;
    x <== andGate.out;

        // Not Gate  
    notGate.in <== b;
    y <== notGate.out;

        // OR Gate
    orGate.a <== x;
    orGate.b <== y;

    q <== orGate.out;

}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = CusCircuit();