-- the test-case cannot work, as we make up a new type on the fly. We need to predefine it first.
<'

type name_t: [ENV];

unit son_s {
    name: name_t;
};

unit father_s {
    name: name_t;
    keep name == ENV;

    son: son_s is instance;
        keep son.name == read_only(append(name.as_a(string),"_SON").as_a(name_t));

    run() is also {
        message(NONE, "son's name=",son.name); 
    };
};

extend sys {
    father: father_s is instance;

    run() is also {
        message(NONE, "father's name=",father.name); 
    };
};

'>
