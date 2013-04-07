function [ matrix ] = quality( outputs, targets)
%CONFUSION Summary of this function goes here
%   Detailed explanation goes here

TP = 0; TN = 0; FP = 0; FN = 0;
N = length(targets);
for index = 1 : N
    isPositive = targets(index);
    evaluatedPositive = outputs(index) > 0.5;
    if (isPositive && evaluatedPositive)
        TP = TP +1;
    elseif (~isPositive && ~evaluatedPositive)
        TN = TN +1;
    elseif (isPositive && ~evaluatedPositive)
        FN = FN +1;
    else
        FP = FP +1;
    end
end
accuracy = (TP + TN) / N;
matrix = [
    accuracy NaN;
    TN FN;
    FP TP];
    
    
end

