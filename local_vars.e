--This test case shows that methods in Specman get arguments by value, 
--not by reference, as the same value my_var, remains unchanged after 
--the method runs.

<'

extend sys {
    my_func(local_var: uint) is {
        local_var = 0xCAFE_CAFE;
        messagef(NONE, "my_func=%x", local_var);
    };    

    run() is also {
        var my_var: uint = 0xB1B1_B1B1;
        messagef(NONE, "BEFORE var=%x", my_var);
        my_func(my_var);
        messagef(NONE, "AFTER  var=%x", my_var);
    };
};

'>
