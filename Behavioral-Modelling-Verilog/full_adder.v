 module full_adder_bh_tb(s, cout, a, b, cin); 
 	input a, b, cin;
 	output reg s, cout;

 	always@(a,b,cin) begin
 		s=a^b^cin;
 		cout=(a&b)|(a&cin)|(b&cin);
 	end

 endmodule
