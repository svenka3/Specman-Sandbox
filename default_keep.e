-- The test prints TRUE
<'

struct simple_s {
    kind: bool;
    keep kind; -- Default "keep"
};

extend sys {
    s : simple_s;
    run() is also {
        message(NONE, "kind=",s.kind); 
    };
};

'>
