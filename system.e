--System call routine

<'

extend sys {
    m1() is {
        var log_list: list of string;
        log_list = output_from("ls *log");
        print log_list;
    };
    run() is {
        sys.m1();    
    };
};

'>
