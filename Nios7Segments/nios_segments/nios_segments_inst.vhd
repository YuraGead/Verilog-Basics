	component nios_segments is
		port (
			clk_clk       : in  std_logic                     := 'X';             -- clk
			reset_reset_n : in  std_logic                     := 'X';             -- reset_n
			segm_export   : out std_logic_vector(31 downto 0);                    -- export
			switch_export : in  std_logic_vector(31 downto 0) := (others => 'X')  -- export
		);
	end component nios_segments;

	u0 : component nios_segments
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --  reset.reset_n
			segm_export   => CONNECTED_TO_segm_export,   --   segm.export
			switch_export => CONNECTED_TO_switch_export  -- switch.export
		);

