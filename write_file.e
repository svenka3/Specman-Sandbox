<'

import tx_framer_gui_cfg;

extend sys {
    create_parameters_txt(f_name: string, blk_name: string, gui_cfg: gui_cfg_s) is {
        --var m_file: file      = files.open(f_name, "w", "GUI ".blk_name." configurations");
        var rf_sys: rf_struct = rf_manager.get_exact_subtype_of_instance(gui_cfg);

        --files.writef(m_file, "// PHY block name   : %s\n", blk_name);
        --files.writef(m_file, "// Number of streams: %s\n", gui_cfg.num_of_streams);

        --files.writef(m_file, "TX_SRRC_BC                    ",  gui_cfg.TX_SRRC_BC.size(), " ");
        --files.writef(m_file, "TX_SRRC_FP_MATE_MASTER        ",  gui_cfg.TX_SRRC_FP_MATE_MASTER.size(), " ");
        --files.writef(m_file, "TX_SRRC_GAIN_BITS             ",  gui_cfg.TX_SRRC_GAIN_BITS.size(), " ");
        --files.writef(m_file, "TX_SRRC_CLKEN_PATTERN         ",  gui_cfg.TX_SRRC_CLKEN_PATTERN.size(), " ");
        --files.writef(m_file, "TX_SRRC_SHIFT_PATTERN         ",  gui_cfg.TX_SRRC_SHIFT_PATTERN.size(), " ");
        --files.writef(m_file, "TX_SRRC_IN_MUX_CONFIG         ",  gui_cfg.TX_SRRC_IN_MUX_CONFIG.size(), " ");
        --files.writef(m_file, "TX_SRRC_FP_DELAY              ",  gui_cfg.TX_SRRC_FP_DELAY.size(), " ");
        --files.writef(m_file, "TX_SRRC_COEFF_B0              ",  gui_cfg.TX_SRRC_COEFF_B0.size(), " ");
        --files.writef(m_file, "TX_SRRC_COEFF_B1              ",  gui_cfg.TX_SRRC_COEFF_B1.size(), " ");
        --files.writef(m_file, "TX_SRRC_COEFF_B2              ",  gui_cfg.TX_SRRC_COEFF_B2.size(), " ");
        --files.writef(m_file, "TX_SRRC_COEFF_B3              ",  gui_cfg.TX_SRRC_COEFF_B3.size(), " ");
        --files.writef(m_file, "TX_DINTERP_CLK_DILUTION       ",  gui_cfg.TX_DINTERP_CLK_DILUTION.size(), " ");
        --files.writef(m_file, "TX_DINTERP_BC                 ",  gui_cfg.TX_DINTERP_BC.size(), " ");
        --files.writef(m_file, "TX_DINTERP_BC_MASTER          ",  gui_cfg.TX_DINTERP_BC_MASTER.size(), " ");
        --files.writef(m_file, "TX_DINTERP_BACM_ACTIVE        ",  gui_cfg.TX_DINTERP_BACM_ACTIVE.size(), " ");
        --files.writef(m_file, "TX_DINTERP_STEP_FIX_LSB       ",  gui_cfg.TX_DINTERP_STEP_FIX_LSB.size(), " ");
        --files.writef(m_file, "TX_DINTERP_STEP_FIX_MSB       ",  gui_cfg.TX_DINTERP_STEP_FIX_MSB.size(), " ");
        --files.writef(m_file, "TX_DINTERP_NCO_INIT_PHASE_LSB ",  gui_cfg.TX_DINTERP_NCO_INIT_PHASE_LSB.size(), " ");
        --files.writef(m_file, "TX_DINTERP_NCO_INIT_PHASE_MSB ",  gui_cfg.TX_DINTERP_NCO_INIT_PHASE_MSB.size(), " ");
        --files.writef(m_file, "GUI_TX_SHAPING_EXT_INPUT_TXT  ",  gui_cfg.GUI_TX_SHAPING_EXT_INPUT_TXT.size(), " ");
        --files.writef(m_file, "GUI_TEST_LEN                  ",  gui_cfg.GUI_TEST_LEN.size(), " ");
        --files.writef(m_file, "GUI_NUMBER_OF_STREAMS         ",  gui_cfg.GUI_NUMBER_OF_STREAMS.size(), " ");

        --for each (fld) in rf_sys.get_declared_fields() {
        --    files.writef(m_file, fld.get_long_name(), " ", fld.size());
        --    for each in fld do {
        --        files.writef(m_file, " ", it);
        --    };
        --    files.writef(m_file, "\n ");
        --};
        --files.close(m_file);
    };
    run() is also {
        create_parameters_txt("parameters.txt", "tx_framer", gui_cfg);
    };
};

'>
