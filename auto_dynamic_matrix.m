
clc,
clear all

%loop_counter stores the value of the input 
loop_counter=input('enter the number of rows' );

loop_matrix=[];% it is a acts as a container that accept any number of rows and colunms according to the parameters established 
counter=loop_counter;

for count=1:loop_counter
    
    %this stores the values of each componet in the loop in the form of a
    %matrix
    loop_values=input('enter the values of each component in a row in the form: [r1, r2, r3,.....rn]' );
%     interating through rows of a matrix
        row = 1;
            if row <=counter 
                %this loop act like a dynamic input that that adjut the
                %matrix by increasing it if the input array is bigger that
                %the matrrix and append zeros to the array if the input is
                %smaller that the matrix. the zeros apended from the second
                %from last because the last column represent the voltage
                %whereas the rest represent the resisitance.
                    if isempty(loop_matrix)
                        loop_matrix = loop_values;
                    else
                        % Compare row sizes
                        if length(loop_values) > size(loop_matrix, 2)
                            % Append zeros to the second-to-last column
                            numZeros = length(loop_values) - size(loop_matrix, 2);
                            loop_matrix = [loop_matrix(:, 1:end-1), zeros(size(loop_matrix, 1), numZeros), loop_matrix(:, end)]; 
                        elseif length(loop_values) < size(loop_matrix, 2)
                            % Append zeros between the last and third-from-last columns
                            numZeros = size(loop_matrix, 2) - length(loop_values);
                            loop_values= [loop_values(:, 1:end-1), zeros(size(loop_values, 1), numZeros), loop_values(:, end)];
                        end
                        
                        % Append the new row
                        loop_matrix = [loop_matrix;loop_values];
                    end

            end
    row = row + 1;
   
    counter = counter-1;
end
