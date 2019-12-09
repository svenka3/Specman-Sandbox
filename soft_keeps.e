This is an approximation utility for reconstructing a single CFS.
    - use 'test' command to run the test-case.
    - original seed is 0x1

<' 

struct cfg_u {
    a: bit;
        keep soft a == 0;
    b: bit;
        keep soft b == 0;
};

extend cfg_u {
    keep a.reset_soft();
    keep b.reset_soft();
    keep (a ^ b) == 1;
};

extend sys { 
    !cfg: cfg_u;
    run() is also {
        for ii from 1 to 50 { //loop for 50 times in case there is an error you want to catch
            gen cfg;
            print ii, cfg;
        };
    };
    setup() is also{
        set_config(gen,seed,5);//this is the seed that the original environment used
    };
};

'>
