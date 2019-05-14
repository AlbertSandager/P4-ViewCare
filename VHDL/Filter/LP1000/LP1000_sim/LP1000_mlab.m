%
%THIS IS A WIZARD GENERATED FILE. DO NOT EDIT THIS FILE!
%
%---------------------------------------------------------------------------------------------------------
%This is a filter with fixed coefficients.
%This Model Only Support Single Channel Input Data.
%Please input:
%data vector: 		stimulation(1:n)

%    This Model Only Support FIR_WIDTH to 51 Bits

%FILTER PARAMETER
%Input Data Type :	Signed Binary
%Input Data Width: 24
%Interpolation Factor: 1
%Decimation Factor: 1
%FIR Width (Full Calculation Width Before Output Width Adjust) :24
%-----------------------------------------------------------------------------------------------------------
%MegaWizard Scaled Coefficient Values

 function  output = LP1000_mlab(stimulation, output)
 coef_matrix_in= [-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-11,-11,-11,-11,-11,-11,-11,-11,-11,-11,-11,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-8,-8,-8,-8,-8,-8,-8,-8,-7,-7,-7,-7,-7,-7,-7,-6,-6,-6,-6,-6,-5,-5,-5,-5,-5,-4,-4,-4,-4,-4,-3,-3,-3,-3,-2,-2,-2,-2,-1,-1,-1,0,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,7,7,7,8,8,9,9,9,10,10,11,11,12,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20,21,21,22,22,23,23,24,24,25,26,26,27,27,28,28,29,30,30,31,31,32,32,33,34,34,35,35,36,37,37,38,38,39,40,40,41,42,42,43,44,44,45,45,46,47,47,48,49,49,50,51,51,52,53,53,54,55,55,56,57,57,58,59,59,60,61,61,62,63,63,64,65,65,66,67,67,68,69,69,70,71,71,72,73,73,74,75,75,76,77,77,78,79,79,80,80,81,82,82,83,84,84,85,86,86,87,87,88,89,89,90,91,91,92,92,93,94,94,95,95,96,97,97,98,98,99,99,100,100,101,102,102,103,103,104,104,105,105,106,106,107,107,108,108,109,109,110,110,111,111,111,112,112,113,113,114,114,114,115,115,116,116,116,117,117,117,118,118,118,119,119,119,120,120,120,121,121,121,121,122,122,122,122,123,123,123,123,124,124,124,124,124,125,125,125,125,125,125,125,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,127,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,125,125,125,125,125,125,125,124,124,124,124,124,123,123,123,123,122,122,122,122,121,121,121,121,120,120,120,119,119,119,118,118,118,117,117,117,116,116,116,115,115,114,114,114,113,113,112,112,111,111,111,110,110,109,109,108,108,107,107,106,106,105,105,104,104,103,103,102,102,101,100,100,99,99,98,98,97,97,96,95,95,94,94,93,92,92,91,91,90,89,89,88,87,87,86,86,85,84,84,83,82,82,81,80,80,79,79,78,77,77,76,75,75,74,73,73,72,71,71,70,69,69,68,67,67,66,65,65,64,63,63,62,61,61,60,59,59,58,57,57,56,55,55,54,53,53,52,51,51,50,49,49,48,47,47,46,45,45,44,44,43,42,42,41,40,40,39,38,38,37,37,36,35,35,34,34,33,32,32,31,31,30,30,29,28,28,27,27,26,26,25,24,24,23,23,22,22,21,21,20,20,19,19,18,18,17,17,16,16,15,15,14,14,13,13,12,12,12,11,11,10,10,9,9,9,8,8,7,7,7,6,6,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,0,0,0,0,0,-1,-1,-1,-2,-2,-2,-2,-3,-3,-3,-3,-4,-4,-4,-4,-4,-5,-5,-5,-5,-5,-6,-6,-6,-6,-6,-7,-7,-7,-7,-7,-7,-7,-8,-8,-8,-8,-8,-8,-8,-8,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-11,-11,-11,-11,-11,-11,-11,-11,-11,-11,-11,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-9,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-8,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-7,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2];
 INTER_FACTOR  = 1;
 DECI_FACTOR  =  1;
 MSB_RM  = 0;
 MSB_TYPE  = 0;
 LSB_RM  = 18;
 LSB_TYPE  = 0;
 FIR_WIDTH  = 24 + MSB_RM + LSB_RM;
 OUT_WIDTH  = 24 ;  %24
 DATA_WIDTH = 24;
 BANKCOUNT = 1;
 data_type = 1;

  
 % check size of inputs. 
 [DX,DY] = size(stimulation);
 [CX,CY] = size(coef_matrix_in); 
 if (CY ~= DY * INTER_FACTOR) 
    fprintf('WARNING : coef_matrix size and input data size is not match\n'); 
 end 

 %fill coef_matrix to length of data with the latest coef set 
 if (CY < DY * INTER_FACTOR) 
   %for i= CX +1:DY * INTER_FACTOR 
   for i= 1:DY * INTER_FACTOR 
     if (BANKCOUNT > 1)
       coef_matrix(i,:) = coef_matrix_in(bank(i)+1,:); 
     else
       coef_matrix(i,:) = coef_matrix_in(1,:); 
     end
   end 
 end
	  
 % check if input is integer 
       	int_sti=round(stimulation); 
	    T = (int_sti ~= stimulation); 
	    if (max(T)~=0) 
	        fprintf('WARNING : Integer Input Expected: Rounding Fractional Input to Nearest Integer...\n'); 
	    end 
	     
	    %Input overflow check 
	    switch  data_type 
	    case 1 
	        %set max/min for signed 
	        maxdat = 2^(DATA_WIDTH-1)-1; 
	        mindat = -maxdat-1; 
	    case 2 
	        %set max/min for unsigned 
	        maxdat = 2^DATA_WIDTH-1; 
	        mindat = 0; 
	    end 

	    if(data_type == 2)
	    	if(abs(coef_matrix) == coef_matrix)
	    		FIR_WIDTH = FIR_WIDTH +1;
	    	end
	    end

	    %Saturating Input Value 
	    a=find(int_sti>maxdat); 
	    b=find(int_sti<mindat); 
	    if (~isempty(a)|~isempty(b)) 
	 	    fprintf('WARNING : Input Amplitude Exceeds MAXIMUM/MINIMUM allowable values - saturating input values...\n'); 
	            lena = length (a); 
	            lenb = length (b); 
	            for i =1:lena 
	        	    fprintf('%d > %d \n', int_sti(a(i)), maxdat); 
			        int_sti(a(i)) = maxdat; 
		        end 
		    for i =1:lenb 
			    fprintf('%d < %d \n', int_sti(b(i)), mindat); 
			    int_sti(b(i)) = mindat; 
		    end 
	    end 
         
	    % Add interpolation 
   	    inter_sti = zeros(1, INTER_FACTOR * length(int_sti)); 
	    inter_sti(1:INTER_FACTOR:INTER_FACTOR * length(int_sti)) = int_sti; 
 
         
        for i = 1 : DY *INTER_FACTOR 
    	    coef_current = coef_matrix(i,:); 
            output_temp(i) = simp_adaptive (inter_sti, coef_current, i); 
        end 
	% Truncate output 
	len1 = length(output_temp); 
	 
	    switch  LSB_TYPE 
	    case 0 
	        %truncate 
            out_dec = bi_trunc_lsb(output_temp,LSB_RM,FIR_WIDTH); 
	    case 1 
	        %round 
            out_dec = bi_round(output_temp,LSB_RM, FIR_WIDTH); 
	    end 
         
 	    switch  MSB_TYPE 
	    case 0 
	        %truncate 
            out_dec = bi_trunc_msb(out_dec,MSB_RM,FIR_WIDTH-LSB_RM); 
	    case 1 
	        %round 
            out_dec = bi_satu(out_dec,MSB_RM, FIR_WIDTH-LSB_RM); 
	    end 
 	    
    	% choose decimation output in phase=DECI_FACTOR-1  
     	if(DECI_FACTOR == 1) 
     		output = out_dec; 
     	else 
        output = out_dec(1:DECI_FACTOR:len1);

	 	end  
 	       
  	function[output, outindex] = simp_adaptive (int_sti, coef_current, data_index, output) 
	%Simulation is the whole input sequence 
	%coef_current is the current coefficient set 
	%data_index gives the last data to use 
	%outputs are the sum of input and coef multiplication 
	%outindex is the next data_index 
    
	sti_current = zeros(length(coef_current),1); 
	 
	data_length = length(int_sti); 
	 
	%Check data index 
	if (data_index > data_length) 
		fprintf('ERROR: DATA INDEX IS LARGER THAN DATA LENGTH!!!\n'); 
		return; 
	end 
	for i = 1: length(coef_current) 
	   if ((data_index -i+1)>0 & (data_index - i+1)<=data_length) 
	      sti_current(i,1) = int_sti(data_index - i+1); 
	   end 
	end 
	 
	outindex= data_index+1; 
	output = coef_current * sti_current; 
	% end of function simp_adaptive 
 
	function output = bi_round(data_in,LSB_RM,ORI_WIDTH, output) 
	% LSB_RM is the bit to lose in LSB 
	% ORI_WIDTH is the original data width

	data = round (data_in / 2^LSB_RM);

	output = bi_satu(data,0,ORI_WIDTH - LSB_RM); 
	%end of function bi_trunc_lsb 
	 
	function output = bi_trunc_lsb(data_in,LSB_RM,ORI_WIDTH, output) 
	% LSB_RM is the bit to lose in LSB 
	% ORI_WIDTH is the original data width 
	%2's complement system 
	output = bitshift(2^ORI_WIDTH*(data_in<0) + data_in, -LSB_RM) - 2^(ORI_WIDTH-LSB_RM) *(data_in<0); 
	% end of function bi_round 
	 
	function output = bi_trunc_msb(data_in,MSB_RM,ORI_WIDTH, output) 
	% MSB_RM is the bit to lose in LSB 
	% ORI_WIDTH is the original data width 
	%2's complement system 
	data = 2^ORI_WIDTH * (data_in < 0)+ data_in; 
	erase_num = 2^(ORI_WIDTH - MSB_RM) - 1; 
	data = bitand(data, erase_num); 
	output = data - 2^(ORI_WIDTH - MSB_RM)*(bitget(data,ORI_WIDTH - MSB_RM)); 
	%end of bi_trunc_msb 
	 
	function output = bi_satu(data_in,MSB_RM,ORI_WIDTH, output) 
	% MSB_RM is the bit to lose in LSB 
	% ORI_WIDTH is the original data width 
	%2's complement system 
	maxdat = 2^(ORI_WIDTH - MSB_RM - 1)-1; 
	mindat = 2^(ORI_WIDTH - MSB_RM - 1)*(-1); 
	data_in(find(data_in > maxdat)) = maxdat; 
	data_in(find(data_in < mindat)) = mindat; 
	output = data_in; 
	%end of bi_satu  


