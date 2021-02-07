data = load("data_EAS595.mat");
X = data.F1;
Y = data.F2;

% Train and test using F1  ( case 1: x = F1)
% finding error rate = incorrect predictions/total predictions == 1 -
% accuracy(i.e, accuracy = correct predictions/total predictions)
F1_accu = classifier(X); 
disp(F1_accu);  % 53% Accuracy
F1_error_rate = 1 - F1_accu; 
disp(F1_error_rate);  % 47% Error Rate

% Train and test using F1  ( case 2: x = F2)
% finding error rate = incorrect predictions/total predictions == 1 -
% accuracy(i.e, accuracy = correct predictions/total predictions)

F2_accu = classifier(Y); 
disp(F2_accu);  % 55% Accuracy
F2_error_rate = 1 - F2_accu; 
disp(F2_error_rate);  % 44.91% Error Rate

% Plot F2 vs F1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
hold on;
xlabel("1st Feature (F1)");
ylabel("2nd Feature (F2)");
for i = 1 : 5
    plot(X(:, i), Y(:, i), 'o');
end
legend('C1', 'C2', 'C3', 'C4', 'C5');

% step 3: Normalization

data.Z1 = (X - mean(X, 2)) ./ std(Y, 0, 2);