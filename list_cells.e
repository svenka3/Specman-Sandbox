<'
struct instr {
    op1: uint;
    op2: uint;
};
extend sys {
    i_list: list of instr;
    run() is also {
        for each in i_list {
            print it;    
        };
    };
};

'>
