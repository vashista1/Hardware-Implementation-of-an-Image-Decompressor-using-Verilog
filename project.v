/*
Copyright by Henry Ko and Nicola Nicolici
Developed for the Digital Systems Design course (COE3DQ4)
Department of Electrical and Computer Engineering
McMaster University
Ontario, Canada
*/

`timescale 1ns/100ps
`default_nettype none

`include "define_state.h"

// This is the top module
// It connects the UART, SRAM and VGA together.
// It gives access to the SRAM for UART and VGA
module project (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                   // 50 MHz clock

		/////// pushbuttons/switches              ////////////
		input logic[3:0] PUSH_BUTTON_I,           // pushbuttons
		input logic[17:0] SWITCH_I,               // toggle switches

		/////// 7 segment displays/LEDs           ////////////
		output logic[6:0] SEVEN_SEGMENT_N_O[7:0], // 8 seven segment displays
		output logic[8:0] LED_GREEN_O,            // 9 green LEDs

		/////// VGA interface                     ////////////
		output logic VGA_CLOCK_O,                 // VGA clock
		output logic VGA_HSYNC_O,                 // VGA H_SYNC
		output logic VGA_VSYNC_O,                 // VGA V_SYNC
		output logic VGA_BLANK_O,                 // VGA BLANK
		output logic VGA_SYNC_O,                  // VGA SYNC
		output logic[9:0] VGA_RED_O,              // VGA red
		output logic[9:0] VGA_GREEN_O,            // VGA green
		output logic[9:0] VGA_BLUE_O,             // VGA blue
		
		/////// SRAM Interface                    ////////////
		inout wire[15:0] SRAM_DATA_IO,            // SRAM data bus 16 bits
		output logic[17:0] SRAM_ADDRESS_O,        // SRAM address bus 18 bits
		output logic SRAM_UB_N_O,                 // SRAM high-byte data mask 
		output logic SRAM_LB_N_O,                 // SRAM low-byte data mask 
		output logic SRAM_WE_N_O,                 // SRAM write enable
		output logic SRAM_CE_N_O,                 // SRAM chip enable
		output logic SRAM_OE_N_O,                 // SRAM output logic enable
		
		/////// UART                              ////////////
		input logic UART_RX_I,                    // UART receive signal
		output logic UART_TX_O                    // UART transmit signal

);
	
logic resetn;

top_state_type top_state;

// For Push button
logic [3:0] PB_pushed;

// For VGA SRAM interface //read stored image from the SRAM and display on SCREEN
logic VGA_enable;                 //enables VGA Controller
logic [17:0] VGA_base_address;    //UART SRAM interface writes data in the SRAM starting at address 0 
logic [17:0] VGA_SRAM_address;    //VGA SRAM interface starts reading from address 0 so modified so RGB data read from 146944

// For SRAM
logic [17:0] SRAM_address;  
logic [15:0] SRAM_write_data;
logic SRAM_we_n;
logic [15:0] SRAM_read_data;
logic SRAM_ready;

// For UART SRAM interface , send PPM files from PC and store in external SRAM
logic UART_rx_enable;
logic UART_rx_initialize;
logic [17:0] UART_SRAM_address;
logic [15:0] UART_SRAM_write_data;
logic UART_SRAM_we_n;
logic [25:0] UART_timer;

logic [6:0] value_7_segment [7:0];

// For error detection in UART
logic [3:0] Frame_error;          //Frame error is when the 

// For disabling UART transmit
assign UART_TX_O = 1'b1;

// Milestone 1
logic [17:0] M1_SRAM_address;	// Milestone 1's SRAM addr
logic [15:0] M1_write_data; 	// Milestone 1's write data
logic M1_we_n;					// Milestone 1's write enable
logic M1_start;
logic M1_end;

// Simulation 
//logic [3:0] SIMU_timer;			// Simulation delay timer


assign resetn = ~SWITCH_I[17] && SRAM_ready;

// Push Button unit
PB_Controller PB_unit (
	.Clock_50(CLOCK_50_I),
	.Resetn(resetn),
	.PB_signal(PUSH_BUTTON_I),	
	.PB_pushed(PB_pushed)
);

// VGA SRAM interface
VGA_SRAM_interface VGA_unit (
	.Clock(CLOCK_50_I),
	.Resetn(resetn),
	.VGA_enable(VGA_enable),
   
	// For accessing SRAM
	.SRAM_base_address(VGA_base_address),
	.SRAM_address(VGA_SRAM_address),
	.SRAM_read_data(SRAM_read_data),
   
	// To VGA pins
	.VGA_CLOCK_O(VGA_CLOCK_O),
	.VGA_HSYNC_O(VGA_HSYNC_O),
	.VGA_VSYNC_O(VGA_VSYNC_O),
	.VGA_BLANK_O(VGA_BLANK_O),
	.VGA_SYNC_O(VGA_SYNC_O),
	.VGA_RED_O(VGA_RED_O),
	.VGA_GREEN_O(VGA_GREEN_O),
	.VGA_BLUE_O(VGA_BLUE_O)
);

// UART SRAM interface, translates variable names from UART_SRAM interface to TOP LEVEL FSM
UART_SRAM_interface UART_unit(
	.Clock(CLOCK_50_I),
	.Resetn(resetn), 
   
	.UART_RX_I(UART_RX_I),
	.Initialize(UART_rx_initialize),
	.Enable(UART_rx_enable), //in UART_SRAM interface, input logic Enable translate to UART_rx_enable in Top level FSM file
   
	// For accessing SRAM
	.SRAM_address(UART_SRAM_address),
	.SRAM_write_data(UART_SRAM_write_data),
	.SRAM_we_n(UART_SRAM_we_n),
	.Frame_error(Frame_error)
);

// SRAM unit
SRAM_Controller SRAM_unit (
	.Clock_50(CLOCK_50_I),
	.Resetn(~SWITCH_I[17]),
	.SRAM_address(SRAM_address),
	.SRAM_write_data(SRAM_write_data),
	.SRAM_we_n(SRAM_we_n),
	.SRAM_read_data(SRAM_read_data),		
	.SRAM_ready(SRAM_ready),
		
	// To the SRAM pins
	.SRAM_DATA_IO(SRAM_DATA_IO),
	.SRAM_ADDRESS_O(SRAM_ADDRESS_O),
	.SRAM_UB_N_O(SRAM_UB_N_O),
	.SRAM_LB_N_O(SRAM_LB_N_O),
	.SRAM_WE_N_O(SRAM_WE_N_O),
	.SRAM_CE_N_O(SRAM_CE_N_O),
	.SRAM_OE_N_O(SRAM_OE_N_O)
);

// Milestone 1 unit
milestone1 M1_unit (
	.Clock(CLOCK_50_I),
	.Resetn(resetn),
	.startF(M1_start),
	.endF(M1_end),
	.SRAM_address(M1_SRAM_address),
	.SRAM_write_data(M1_write_data),
	.SRAM_we_n(M1_we_n),
	.SRAM_read_data(SRAM_read_data)
);



always @(posedge CLOCK_50_I or negedge resetn) begin
	if (~resetn) begin
		top_state <= S_IDLE;
		
		UART_rx_initialize <= 1'b0;
		UART_rx_enable <= 1'b0;
		UART_timer <= 26'd0;

		M1_start <= 1'b0;

		//SIMU_timer <= 4'd0;

		VGA_enable <= 1'b1;
	end else begin
		UART_rx_initialize <= 1'b0; 
		UART_rx_enable <= 1'b0; 
		
		// Timer for timeout on UART
		// This counter resets itself every time a new data is received on UART
		if (UART_rx_initialize | ~UART_SRAM_we_n) UART_timer <= 26'd0;
		else UART_timer <= UART_timer + 26'd1;

		`ifdef SIMULATION
			UART_timer <= UART_timer + 4'd1; //not seen by quartus when compiling
		`endif	

		case (top_state)
		S_IDLE: begin
			VGA_enable <= 1'b1;    //turns on VGA controller
			if (~UART_RX_I | PB_pushed[0]) begin //negative edge detected on UART_RX_I so zero complemented is one thus goes to sync state
				// UART detected a signal, or PB0 is pressed
				UART_rx_initialize <= 1'b1; //receiver initialized
				
				VGA_enable <= 1'b0; //VGA controller off just writing to SRAM and not reading from it
								
				top_state <= S_ENABLE_UART_RX;

			end
			
			`ifdef SIMULATION // If the code is being simulated
				if (UART_timer == 4'd100) begin // After 100 clock cycles start decoding
					top_state <= S_MILESTONE1_START;
				end else begin // If less then 100 clock cycles make sure to stay in idle
					top_state <= S_IDLE;
				end 		
			`endif
			
		end
		S_ENABLE_UART_RX: begin
			// Enable the UART receiver
			UART_rx_enable <= 1'b1; //enable the interface but do not start rx
			top_state <= S_WAIT_UART_RX;
		end
		S_WAIT_UART_RX: begin
			if ((UART_timer == 26'd49999999) && (UART_SRAM_address != 18'h00000)) begin
				// Timeout for 1 sec on UART for detecting if file transmission is finished
				UART_rx_initialize <= 1'b1;  //initializing for receiving
				 				
				top_state <=S_MILESTONE1_START; //next state
			end
		end
		S_MILESTONE1_START: begin
			M1_start <= 1'b1; //start signal is on
			top_state <= S_MILESTONE1_WAIT;
		end	
		S_MILESTONE1_WAIT: begin
			M1_start <= 1'b0; //M1 start is zero
			if(M1_end) begin //M1 has ended  is true
				VGA_enable <= 1'b1; //in the next state VGA is enable which makes sense sense VGA is reading from SRAM
				top_state <= S_IDLE; //VGA using SRAM
			end
		end	
		default: top_state<=S_IDLE; //VGA reading from SRAM is default
		endcase
	end
end

assign VGA_base_address = 18'd146944; // This is where RGB values are stored and interface will start reading SRAM from this address

// Give access to SRAM for UART, Milestone 1 and VGA at appropriate time
assign SRAM_address = ((top_state == S_ENABLE_UART_RX) || (top_state == S_WAIT_UART_RX)) 
						? UART_SRAM_address 
						: ((top_state == S_MILESTONE1_START) || (top_state == S_MILESTONE1_WAIT))
						? M1_SRAM_address
						: VGA_SRAM_address;

assign SRAM_write_data = ((top_state == S_ENABLE_UART_RX) || (top_state == S_WAIT_UART_RX)) 
						? UART_SRAM_write_data
						: M1_write_data; //no write data for VGA because only reading from SRAM

assign SRAM_we_n = ((top_state == S_ENABLE_UART_RX) || (top_state == S_WAIT_UART_RX)) 
						? UART_SRAM_we_n 
						: ((top_state == S_MILESTONE1_START) || (top_state == S_MILESTONE1_WAIT))
						? M1_we_n
						: 1'b1;//on VGA you are reading from the SRAM thus we_n is 1

// 7 segment displays
convert_hex_to_seven_segment unit7 (
	.hex_value(SRAM_read_data[15:12]), 
	.converted_value(value_7_segment[7])
);

convert_hex_to_seven_segment unit6 (
	.hex_value(SRAM_read_data[11:8]), 
	.converted_value(value_7_segment[6])
);

convert_hex_to_seven_segment unit5 (
	.hex_value(SRAM_read_data[7:4]), 
	.converted_value(value_7_segment[5])
);

convert_hex_to_seven_segment unit4 (
	.hex_value(SRAM_read_data[3:0]), 
	.converted_value(value_7_segment[4])
);

convert_hex_to_seven_segment unit3 (
	.hex_value({2'b00, SRAM_address[17:16]}), 
	.converted_value(value_7_segment[3])
);

convert_hex_to_seven_segment unit2 (
	.hex_value(SRAM_address[15:12]), 
	.converted_value(value_7_segment[2])
);

convert_hex_to_seven_segment unit1 (
	.hex_value(SRAM_address[11:8]), 
	.converted_value(value_7_segment[1])
);

convert_hex_to_seven_segment unit0 (
	.hex_value(SRAM_address[7:4]), 
	.converted_value(value_7_segment[0])
);

assign   
   SEVEN_SEGMENT_N_O[0] = value_7_segment[0],
   SEVEN_SEGMENT_N_O[1] = value_7_segment[1],
   SEVEN_SEGMENT_N_O[2] = value_7_segment[2],
   SEVEN_SEGMENT_N_O[3] = value_7_segment[3],
   SEVEN_SEGMENT_N_O[4] = value_7_segment[4],
   SEVEN_SEGMENT_N_O[5] = value_7_segment[5],
   SEVEN_SEGMENT_N_O[6] = value_7_segment[6],
   SEVEN_SEGMENT_N_O[7] = value_7_segment[7];

assign LED_GREEN_O = {resetn, VGA_enable, ~SRAM_we_n, Frame_error, top_state};

endmodule



