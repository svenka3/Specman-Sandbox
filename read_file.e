<'

extend sys {
    rd_file_to_lob(depth: uint, file_name: string): list of bit is {
        var lob   : list of bit;
        var m_file: file = files.open(file_name, "r", "");

        for i from 0 to depth-1 do {
            var rd_sts: bool;
            var packed: uint(bits: 16);
            var str   : string;
            var bits_l: list of bit;

            rd_sts = files.read(m_file, str);
            print rd_sts;
            if (rd_sts==FALSE) { error("Failed to read from file"); };

            str = append("0x", str);
            packed = str.as_a(uint(bits: 16));
            bits_l = pack(packing.low, packed);
            lob.add(bits_l);
        };
        files.close(m_file);
        return lob;
    };

    run() is also {
        var list_of_bits: list of bit  = rd_file_to_lob(2, "file.txt");
        var list_of_byte: list of byte = pack(packing.low,  list_of_bits);
        list_of_byte.resize(2, FALSE, 0, TRUE);
        for each in list_of_byte do { print it using radix=HEX; };
    };
};

'>
