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

module milestone1 (
		
		input logic Clock,                   	// 50 MHz clock
		input logic Resetn,					 	// Reset
		input logic startF,					 	// Start flag
		output logic endF,						// End flag

		/////// SRAM Interface                  ////////////
		output logic [17:0] SRAM_address,       // SRAM address bus 18 bits
		output logic [15:0] SRAM_write_data,
		output logic SRAM_we_n,
		input logic [15:0] SRAM_read_data
);


M1_state state;
logic resetn;

// Save Registers for read values
logic [7:0] Y [1:0]; //Y[0,1]
logic [7:0]	Uread [1:0];
logic [7:0]	Vread [1:0];

// Place holders 
logic [7:0] caseNum; // Number to keep track of how many common cases have passed
logic [7:0] rowNum; // Number of rows 

// U and V registers are in format (j+5)/2, (j+3)/2, (j+1)/2, (j-1)/2, (j-3)/2, (j-5)/2
// Where (j-1)/2 is used as j/2 when j is even 
logic [47:0] U;
logic [47:0] V;
logic [23:0] Uprime;
logic [23:0] Vprime;

// Addresses 
logic [17:0] Yaddr;
logic [17:0] Uaddr;
logic [17:0] Vaddr;
logic [17:0] colourAddr;

// Accumulators
logic [31:0] Rval;
logic [31:0] Gval;
logic [31:0] Bval;
logic [31:0] Uaccu;
logic [31:0] Vaccu;

// Pixel RGB registers
logic [23:0] evenPixel;
logic [23:0] oddPixel;

// Multipliers 
logic [31:0] A; 
logic [31:0] B; 
logic [31:0] C;
logic [31:0] D;
logic [31:0] E;
logic [63:0] multi_0_long;
logic [63:0] multi_1_long;
logic [63:0] multi_2_long;
logic [31:0] multi_0; 
logic [31:0] multi_1; 
logic [31:0] multi_2; 
logic [31:0] op1;
logic [31:0] op2;
logic [31:0] op3;
logic [31:0] op4;
logic [31:0] op5;
logic [31:0] op6;
logic [15:0] Ymult;
logic [23:0] Umult;
logic [23:0] Vmult;



// The commoncase alternates between two possible sets of code
// therefore a flag is needed
logic caseToggle; 

assign resetn = Resetn;

always_ff @ (posedge Clock or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= IDLE;
		
		SRAM_we_n <= 1'b1;
		SRAM_address <= 18'd0;
		
		Yaddr <= 18'd0;
		Uaddr <= 18'd38400;
		Vaddr <= 18'd57600;
				
		colourAddr <= 18'd146944;
				
		caseToggle <= 1'b0;

		endF <= 1'b0;
		rowNum <= 8'd0;
		caseNum <= 8'd0;
		
		
	end else begin
		case (state)
		IDLE: begin
			// Set initial addresses
			Yaddr <= 18'd0;
			Uaddr <= 18'd38400;
			Vaddr <= 18'd57600;
			colourAddr <= 18'd146944;
			
			if(startF) begin // When a start flag is received start the decoder
				endF <= 1'b0;
				caseNum <= 8'd0;
				rowNum <= 8'd0;
				caseToggle <= 1'b0;
				SRAM_we_n <= 1'b1;

				// Set initial addresses
				Yaddr <= 18'd0;
				Uaddr <= 18'd38400;
				Vaddr <= 18'd57600;
				colourAddr <= 18'd146944;

				state <= LI0; 
			end
		end
		
// ---------------- LEAD IN ------------------		
		LI0: begin
			SRAM_address <= Yaddr;
			Yaddr <= Yaddr + 18'd1;
			SRAM_we_n <= 1'b1;
			state <= LI1;
		end
		LI1: begin
			SRAM_address <= Uaddr;
			Uaddr <= Uaddr + 18'd1;
			state <= LI2;
		end
		LI2: begin
			SRAM_address <= Uaddr;
			Uaddr <= Uaddr + 18'd1;
			state <= LI3;
		end
		LI3: begin
			SRAM_address <= Uaddr;
			Uaddr <= Uaddr + 18'd1;
			{Y[0], Y[1]} <= SRAM_read_data;
			state <= LI4;
		end
		LI4: begin
			SRAM_address <= Vaddr;
			Vaddr <= Vaddr + 18'd1;
			Uprime <= {{16{1'b0}}, SRAM_read_data[15:8]};
			U[7:0] <= SRAM_read_data[15:8];
			U[15:8] <= SRAM_read_data[15:8];
			U[23:16] <= SRAM_read_data[15:8];
			U[31:24] <= SRAM_read_data[7:0];
			state <= LI5;
		end
		LI5: begin
			SRAM_address <= Vaddr;
			Vaddr <= Vaddr + 18'd1;
			U[39:32] <= SRAM_read_data[15:8];
			U[47:40] <= SRAM_read_data[7:0];
			state <= LI6;
		end
		LI6: begin
			//{Uread[0], Uread[1]} <= SRAM_read_data;
			state <= LI7;
		end
		LI7: begin
			Vprime <= {{16{1'b0}}, SRAM_read_data[15:8]};
			V[7:0] <= SRAM_read_data[15:8];
			V[15:8] <= SRAM_read_data[15:8];
			V[23:16] <= SRAM_read_data[15:8];
			V[31:24] <= SRAM_read_data[7:0];	
			state <= LI8;	
		end
		LI8: begin
			V[39:32] <= SRAM_read_data[15:8];
			V[47:40] <= SRAM_read_data[7:0];
			caseNum <= caseNum + 8'd1;
			state <= CC0;
		end
// -------------- Common Case -----------------		
		CC0: begin
			if(caseNum < 8'd155) begin //Check this number to be sure, when U and V include the rightmost columns value then stop reading more
				if(~caseToggle) begin 
					SRAM_address <= Vaddr;
					Vaddr <= Vaddr + 18'd1;	
				end else begin
					SRAM_address <= Uaddr;
					Uaddr <= Uaddr + 18'd1;	
				end
			end 	
	
			SRAM_we_n <= 1'd1;
			
			Rval <= multi_0;
			Gval <= multi_0 + multi_1;
			Bval <= multi_0 + multi_2;
			
			if(caseNum > 8'd0)begin // Odd values are not saved in the first runthrough of the common case
				// Colour value clipping and saving for odd pixel
				// Clipping the values in this way also effectively divides the values by 65536
				// Clip and save Rval
				oddPixel[23:16] <= Rval[31] ? 8'd0 : (|Rval[30:24] ? 8'd255 : Rval[23:16]);  
				
				// Clip and save Gval
				oddPixel[15:8] <= Gval[31] ? 8'd0 : (|Gval[30:24] ? 8'd255 : Gval[23:16]);  
				
				// Clip and save Bval	
				oddPixel[7:0] <= Bval[31] ? 8'd0 : (|Bval[30:24] ? 8'd255 : Bval[23:16]);
			end
			state <= CC1;
		end	
		CC1: begin
			if(caseNum < 8'd159) begin
				SRAM_address <= Yaddr;
				Yaddr <= Yaddr + 18'd1;
			end
			Rval <= Rval + multi_0;
			Gval <= Gval + multi_1;
			
			
			state <= CC2;
		end
		CC2: begin
			Uprime <= Uaccu[31:8]; //Perform arithmetic on Uaccu by removing lowest 8 bits (dividing by 256) then save it		
			state <= CC3;
		end
		CC3: begin
			Vprime <= Vaccu[31:8]; //Perform arithmetic on Vaccu by removing lowest 8 bits (dividing by 256) then save it
			
			if(caseNum < 8'd155) begin // When the right most coloumns U and V values arent loaded yet then continue loading new ones 
				if(~caseToggle) begin // Read the new V values and shift the U and V registers adding the proper values in
					{Vread[0], Vread[1]} <= SRAM_read_data;
					U <= {Uread[0], U[47:8]};
					V <= {SRAM_read_data[15:8], V[47:8]};
				end else begin
					{Uread[0], Uread[1]} <= SRAM_read_data;
					U <= {Uread[1], U[47:8]};
					V <= {Vread[1], V[47:8]};
				end
			end else begin 
			// At this point the right most coloumn U and V vals have been loaded
			// so they need to be fed into the U and V register instead of loading new values	
				U <= {Uread[1], U[47:8]};
				V <= {Vread[1], V[47:8]}; 
			end

			if(caseNum > 8'd0) begin // Case 0 is purely loading and computing values so writing will only occur afterwards
				SRAM_we_n <= 1'b0;
				SRAM_address <= colourAddr;
				colourAddr <= colourAddr + 18'd1;
				SRAM_write_data <= evenPixel[23:8];
			end
			
			state <= CC4;
		end
	
		CC4: begin
			if(caseNum < 8'd159) begin
				{Y[0], Y[1]} = SRAM_read_data;
			end 

		// Colour value clipping and saving for even pixel
		// Clipping the values in this way also effectively divides the values by 65536
		// Clip and save Rval
			evenPixel[23:16] <= Rval[31] ? 8'd0 : (|Rval[30:24] ? 8'd255 : Rval[23:16]);  
			
		// Clip and save Gval
			evenPixel[15:8] <= Gval[31] ? 8'd0 : (|Gval[30:24] ? 8'd255 : Gval[23:16]);  
			
		// Clip and save Bval	
			evenPixel[7:0] <= Bval[31] ? 8'd0 : (|Bval[30:24] ? 8'd255 : Bval[23:16]);
			
			Rval <= multi_0;
			Gval <= multi_0 + multi_1;
			Bval <= multi_0 + multi_2;
			
			if(caseNum > 8'd0) begin
				SRAM_we_n = 1'b0;
				SRAM_address <= colourAddr;
				colourAddr <= colourAddr + 18'd1;
				SRAM_write_data <= {evenPixel[7:0], oddPixel[23:16]};
			end
			
			state <= CC5;
		end
		CC5: begin
			Rval <= Rval + multi_0;
			Gval <= Gval + multi_1;
			
			Uprime <= {{16{1'b0}}, U[23:16]};
			Vprime <= {{16{1'b0}}, V[23:16]};
			
			if(caseNum > 8'd0) begin
				SRAM_we_n <= 1'b0;
				SRAM_address <= colourAddr;
				colourAddr <= colourAddr + 18'd1;
				SRAM_write_data <= oddPixel[15:0];
			end
			
			if(caseNum < 8'd159) begin // The 160th common case batch is required for final computations for pixels 318|319
				caseToggle <= ~caseToggle; 
				caseNum <= caseNum + 8'd1;
				state <= CC0;	
			end else begin
				state <= LO0;
			end	
		end
		LO0: begin
			// Colour value clipping and saving for odd pixel needs to be completed in leadout
			// Clipping the values in this way also effectively divides the values by 65536
			// Clip and save Rval
			oddPixel[23:16] <= Rval[31] ? 8'd0 : (|Rval[30:24] ? 8'd255 : Rval[23:16]);  
			
			// Clip and save Gval
			oddPixel[15:8] <= Gval[31] ? 8'd0 : (|Gval[30:24] ? 8'd255 : Gval[23:16]);  
				
			// Clip and save Bval	
			oddPixel[7:0] <= Bval[31] ? 8'd0 : (|Bval[30:24] ? 8'd255 : Bval[23:16]);

			SRAM_we_n <= 1'b0;
			SRAM_address <= colourAddr;
			colourAddr <= colourAddr + 18'd1;
			SRAM_write_data <= evenPixel[23:8];
			state <= LO1;
		end
		LO1: begin
			SRAM_we_n <= 1'b0;
			SRAM_address <= colourAddr;
			colourAddr <= colourAddr + 18'd1;
			SRAM_write_data <= {evenPixel[7:0], oddPixel[23:16]};
			state <= LO2;
		end
		LO2: begin
			SRAM_we_n <= 1'b0;
			SRAM_address <= colourAddr;
			colourAddr <= colourAddr + 18'd1;
			SRAM_write_data <= oddPixel[15:0];
			if(rowNum < 8'd239) begin
				rowNum <= rowNum + 8'd1;
				caseToggle <= 1'b0;
				caseNum <= 8'd0;	
				state <= LI0;	
			end	else begin
				state <= IDLE;
				endF <= 1'b1;
			end	
		end
		default: state <= IDLE;
		endcase
	end
end




assign A = 32'd76284;
assign B = 32'd104595;
assign C = {16'd65535,16'd39912}; // -25624
assign D = {16'd65535,16'd12255}; // -53281
assign E = 32'd132251;


always_comb begin
	op1 = 32'd0;
	op2 = 32'd0;
	op3 = 32'd0;
	op4 = 32'd0;
	op5 = 32'd0;
	op6 = 32'd0;
	Ymult = 16'd0;
	Umult = Uprime - 24'd128;
	Vmult = Vprime - 24'd128;
	
	
	case(state)
	CC0: begin //first common case state
		Ymult = {{8{1'b0}}, Y[0]} - 16'd16;
		op1 = A;
		op2 = {{16{Ymult[15]}}, {Ymult}};
		op3 = C;
		op4 = {{8{Umult[23]}}, {Umult}};
		op5 = E;
		op6 = {{8{Umult[23]}}, {Umult}};
	end
	CC1: begin
		op1 = B;
		op2 = {{8{Vmult[23]}}, {Vmult}};
		op3 = D;
		op4 = {{8{Vmult[23]}}, {Vmult}};
		 
	end
	CC2: begin
		op1 = 32'd21;
		op2 = U[7:0] + U[47:40]; // Inital op2 value
		op2 = {{23{1'b0}}, op2[8:0]}; // op2 rewritten with sign extension
		op3 = 32'd52;
		op4 = U[15:8] + U[39:32]; // Inital op3 value
		op4 = {{23{1'b0}}, op4[8:0]}; // op3 rewritten with sign extension
		op5 = 32'd159;
		op6 = U[23:16] + U[31:24]; // Inital op6 value
		op6 = {{23{1'b0}}, op6[8:0]}; // op6 rewritten with sign extension
	end
	CC3: begin
		// Follows the same form as the CC2 multiplier case
		op1 = 32'd21;
		op2 = V[7:0] + V[47:40]; 
		op2 = {{23{1'b0}}, op2[8:0]};
		op3 = 32'd52;
		op4 = V[15:8] + V[39:32];
		op4 = {{23{1'b0}}, op4[8:0]};
		op5 = 32'd159;
		op6 = V[23:16] + V[31:24];
		op6 = {{23{1'b0}}, op6[8:0]};
	end
	CC4: begin
		Ymult = {{8{1'b0}}, Y[1]} - 16'd16;
		op1 = A;
		op2 = {{16{Ymult[15]}}, {Ymult}};
		op3 = C;
		op4 = {{8{Umult[23]}}, {Umult}};
		op5 = E;
		op6 = {{8{Umult[23]}}, {Umult}};
	end
	CC5: begin
		op1 = B;
		op2 = {{8{Vmult[23]}}, {Vmult}};
		op3 = D;
		op4 = {{8{Vmult[23]}}, {Vmult}};
	end
		
	
	endcase
end
  
assign multi_0_long = op1*op2;
assign multi_1_long = op3*op4;
assign multi_2_long = op5*op6;
assign multi_0 = multi_0_long[31:0];
assign multi_1 = multi_1_long[31:0];
assign multi_2 = multi_2_long[31:0];

// Combinational accumulators
always_comb begin
	Uaccu = multi_0 - multi_1 + multi_2 + 32'd128;
	Vaccu = multi_0 - multi_1 + multi_2 + 32'd128;
end	

endmodule
