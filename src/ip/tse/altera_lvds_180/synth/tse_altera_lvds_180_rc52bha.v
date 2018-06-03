// tse_altera_lvds_180_rc52bha.v

// This file was auto-generated from altera_lvds_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.0 219

`timescale 1 ps / 1 ps
module tse_altera_lvds_180_rc52bha (
		input  wire       inclock,       //       inclock.export
		input  wire       pll_areset,    //    pll_areset.export
		output wire       pll_locked,    //    pll_locked.export
		output wire       rx_coreclock,  //  rx_coreclock.export
		output wire [0:0] rx_divfwdclk,  //  rx_divfwdclk.export
		output wire [0:0] rx_dpa_locked, // rx_dpa_locked.export
		input  wire [0:0] rx_dpa_reset,  //  rx_dpa_reset.export
		input  wire [0:0] rx_in,         //         rx_in.export
		output wire [9:0] rx_out         //        rx_out.export
	);

	tse_altera_lvds_core20_180_dhdgdki #(
		.NUM_CHANNELS                       (1),
		.J_FACTOR                           (10),
		.RX_BITSLIP_ROLLOVER                (10),
		.TX_REGISTER_CLOCK                  ("tx_coreclock"),
		.TX_OUTCLOCK_NON_STD_PHASE_SHIFT    ("false"),
		.SERDES_DPA_MODE                    ("dpa_mode_cdr"),
		.TX_OUTCLOCK_ENABLED                ("false"),
		.TX_OUTCLOCK_DIV_WORD               (0),
		.TX_OUTCLOCK_BYPASS_SERIALIZER      ("false"),
		.TX_OUTCLOCK_USE_FALLING_CLOCK_EDGE ("false"),
		.EXTERNAL_PLL                       ("false"),
		.ALIGN_TO_RISING_EDGE_ONLY          ("false"),
		.LOSE_LOCK_ON_ONE_CHANGE            ("false"),
		.USE_BITSLIP                        ("false"),
		.VCO_DIV_EXPONENT                   (0),
		.VCO_FREQUENCY                      (1250),
		.LOOPBACK_MODE                      (0),
		.SILICON_REV                        ("20nm5"),
		.USE_DIV_RECONFIG                   ("false"),
		.pll_input_clock_frequency          ("125.0 MHz"),
		.pll_vco_clock_frequency            ("1250.0 MHz"),
		.m_cnt_hi_div                       (5),
		.m_cnt_lo_div                       (5),
		.n_cnt_hi_div                       (256),
		.n_cnt_lo_div                       (256),
		.m_cnt_bypass_en                    ("false"),
		.n_cnt_bypass_en                    ("true"),
		.m_cnt_odd_div_duty_en              ("false"),
		.n_cnt_odd_div_duty_en              ("false"),
		.pll_cp_setting                     ("pll_cp_setting28"),
		.pll_ripplecap_setting              (""),
		.pll_bw_ctrl                        ("pll_bw_res_setting3"),
		.c_cnt_hi_div0                      (256),
		.c_cnt_lo_div0                      (256),
		.c_cnt_prst0                        (1),
		.c_cnt_ph_mux_prst0                 (4),
		.c_cnt_bypass_en0                   ("true"),
		.c_cnt_odd_div_duty_en0             ("false"),
		.c_cnt_hi_div1                      (1),
		.c_cnt_lo_div1                      (9),
		.c_cnt_prst1                        (10),
		.c_cnt_ph_mux_prst1                 (0),
		.c_cnt_bypass_en1                   ("false"),
		.c_cnt_odd_div_duty_en1             ("false"),
		.c_cnt_hi_div2                      (5),
		.c_cnt_lo_div2                      (5),
		.c_cnt_prst2                        (1),
		.c_cnt_ph_mux_prst2                 (0),
		.c_cnt_bypass_en2                   ("false"),
		.c_cnt_odd_div_duty_en2             ("false"),
		.c_cnt_hi_div3                      (256),
		.c_cnt_lo_div3                      (256),
		.c_cnt_prst3                        (1),
		.c_cnt_ph_mux_prst3                 (0),
		.c_cnt_bypass_en3                   ("true"),
		.c_cnt_odd_div_duty_en3             ("false"),
		.c_cnt_hi_div4                      (256),
		.c_cnt_lo_div4                      (256),
		.c_cnt_prst4                        (1),
		.c_cnt_ph_mux_prst4                 (0),
		.c_cnt_bypass_en4                   ("true"),
		.c_cnt_odd_div_duty_en4             ("false"),
		.c_cnt_hi_div5                      (256),
		.c_cnt_lo_div5                      (256),
		.c_cnt_prst5                        (1),
		.c_cnt_ph_mux_prst5                 (0),
		.c_cnt_bypass_en5                   ("true"),
		.c_cnt_odd_div_duty_en5             ("false"),
		.c_cnt_hi_div6                      (256),
		.c_cnt_lo_div6                      (256),
		.c_cnt_prst6                        (1),
		.c_cnt_ph_mux_prst6                 (0),
		.c_cnt_bypass_en6                   ("true"),
		.c_cnt_odd_div_duty_en6             ("false"),
		.c_cnt_hi_div7                      (256),
		.c_cnt_lo_div7                      (256),
		.c_cnt_prst7                        (1),
		.c_cnt_ph_mux_prst7                 (0),
		.c_cnt_bypass_en7                   ("true"),
		.c_cnt_odd_div_duty_en7             ("false"),
		.c_cnt_hi_div8                      (256),
		.c_cnt_lo_div8                      (256),
		.c_cnt_prst8                        (1),
		.c_cnt_ph_mux_prst8                 (0),
		.c_cnt_bypass_en8                   ("true"),
		.c_cnt_odd_div_duty_en8             ("false"),
		.pll_output_clock_frequency_0       ("1250.0 MHz"),
		.pll_output_phase_shift_0           ("400 ps"),
		.pll_output_duty_cycle_0            (50),
		.pll_output_clock_frequency_1       ("125.0 MHz"),
		.pll_output_phase_shift_1           ("7200 ps"),
		.pll_output_duty_cycle_1            (10),
		.pll_output_clock_frequency_2       ("125.0 MHz"),
		.pll_output_phase_shift_2           ("0 ps"),
		.pll_output_duty_cycle_2            (50),
		.pll_output_clock_frequency_3       ("0.0 MHz"),
		.pll_output_phase_shift_3           ("0 ps"),
		.pll_output_duty_cycle_3            (50),
		.pll_output_clock_frequency_4       ("0.0 MHz"),
		.pll_output_phase_shift_4           ("0 ps"),
		.pll_output_duty_cycle_4            (50),
		.pll_output_clock_frequency_5       ("0.0 MHz"),
		.pll_output_phase_shift_5           ("0 ps"),
		.pll_output_duty_cycle_5            (50),
		.pll_output_clock_frequency_6       ("0.0 MHz"),
		.pll_output_phase_shift_6           ("0 ps"),
		.pll_output_duty_cycle_6            (50),
		.pll_output_clock_frequency_7       ("0.0 MHz"),
		.pll_output_phase_shift_7           ("0 ps"),
		.pll_output_duty_cycle_7            (50),
		.pll_output_clock_frequency_8       ("0.0 MHz"),
		.pll_output_phase_shift_8           ("0 ps"),
		.pll_output_duty_cycle_8            (50),
		.pll_clk_out_en_0                   ("true"),
		.pll_clk_out_en_1                   ("true"),
		.pll_clk_out_en_2                   ("true"),
		.pll_clk_out_en_3                   ("false"),
		.pll_clk_out_en_4                   ("false"),
		.pll_clk_out_en_5                   ("false"),
		.pll_clk_out_en_6                   ("false"),
		.pll_clk_out_en_7                   ("false"),
		.pll_clk_out_en_8                   ("false"),
		.pll_fbclk_mux_1                    ("pll_fbclk_mux_1_glb"),
		.pll_fbclk_mux_2                    ("pll_fbclk_mux_2_m_cnt"),
		.pll_m_cnt_in_src                   ("c_m_cnt_in_src_ph_mux_clk"),
		.pll_bw_sel                         ("high")
	) core (
		.rx_in                   (rx_in),          //   input,   width = 1,         rx_in_conduit_end.export
		.rx_out                  (rx_out),         //  output,  width = 10,        rx_out_conduit_end.export
		.rx_coreclock            (rx_coreclock),   //  output,   width = 1,  rx_coreclock_conduit_end.export
		.inclock                 (inclock),        //   input,   width = 1,       inclock_conduit_end.export
		.pll_areset              (pll_areset),     //   input,   width = 1,    pll_areset_conduit_end.export
		.rx_dpa_locked           (rx_dpa_locked),  //  output,   width = 1, rx_dpa_locked_conduit_end.export
		.rx_dpa_reset            (rx_dpa_reset),   //   input,   width = 1,  rx_dpa_reset_conduit_end.export
		.rx_divfwdclk            (rx_divfwdclk),   //  output,   width = 1,  rx_divfwdclk_conduit_end.export
		.pll_locked              (pll_locked),     //  output,   width = 1,    pll_locked_conduit_end.export
		.tx_in                   (10'b0000000000), // (terminated),                                        
		.tx_out                  (),               // (terminated),                                        
		.tx_outclock             (),               // (terminated),                                        
		.tx_coreclock            (),               // (terminated),                                        
		.rx_bitslip_reset        (1'b0),           // (terminated),                                        
		.rx_bitslip_ctrl         (1'b0),           // (terminated),                                        
		.rx_bitslip_max          (),               // (terminated),                                        
		.ext_fclk                (1'b0),           // (terminated),                                        
		.ext_loaden              (1'b0),           // (terminated),                                        
		.ext_coreclock           (1'b0),           // (terminated),                                        
		.ext_tx_outclock_fclk    (1'b0),           // (terminated),                                        
		.ext_tx_outclock_loaden  (1'b0),           // (terminated),                                        
		.ext_vcoph               (8'b00000000),    // (terminated),                                        
		.ext_pll_locked          (1'b0),           // (terminated),                                        
		.rx_dpa_hold             (1'b0),           // (terminated),                                        
		.rx_fifo_reset           (1'b0),           // (terminated),                                        
		.loopback_in             (1'b0),           // (terminated),                                        
		.loopback_out            (),               // (terminated),                                        
		.user_mdio_dis           (1'b0),           // (terminated),                                        
		.user_dprio_rst_n        (1'b0),           // (terminated),                                        
		.user_dprio_read         (1'b0),           // (terminated),                                        
		.user_dprio_reg_addr     (9'b000000000),   // (terminated),                                        
		.user_dprio_write        (1'b0),           // (terminated),                                        
		.user_dprio_writedata    (8'b00000000),    // (terminated),                                        
		.user_dprio_clk          (),               // (terminated),                                        
		.user_dprio_block_select (),               // (terminated),                                        
		.user_dprio_readdata     (),               // (terminated),                                        
		.user_dprio_ready        (),               // (terminated),                                        
		.pll_extra_clock0        (),               // (terminated),                                        
		.pll_extra_clock1        (),               // (terminated),                                        
		.pll_extra_clock2        (),               // (terminated),                                        
		.pll_extra_clock3        ()                // (terminated),                                        
	);

endmodule
