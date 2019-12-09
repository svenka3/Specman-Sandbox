<'

type name_t: [ENV];

extend sys {
    method(): uint is {
        var a: uint = 1;
        var b: uint = 2;
        var c: uint = 0;

        message(NONE, "a=",a); 
        message(NONE, "b=",b); 

        c=a+b;

        message(NONE, "c=",c); 
        return c;
    };

    run() is also {
        var d: uint;
        
--        method(); //Error: 'method()' is a value-returning <exp>, not an <action>
        d = method();
        message(NONE, "d=",d); 
    };
};

'>
