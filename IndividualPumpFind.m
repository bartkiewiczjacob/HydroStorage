% Header

% Clear Workspace and Command Window
clear, clc

% Load data
pumpData = load('Pumps.csv');

% Accept user input
fprintf('Pump efficiencies: 0.80, 0.83, 0.86, 0.89, 0.92\n');
efficiency = input('Input desired pump efficiency: ');
fprintf('\n');
fprintf('Effective performance ratings: 20, 30, ..., 110, 120\n');
rating = input('Input desired pump efficiency: ');

% Find desired column of data
n = 1;
while(abs(efficiency - pumpData(1, n)) > 0.0005)
    n = n + 1;
end
column = n;

% Find desired row of data
n = 2;
while(abs(rating ~= pumpData(n, 6)) > 0.0005)
    n = n + 1;
end
row = n;

% Output efficiency of desired pump
fprintf('\n');
fprintf('Efficiecny ($ / m^3 / sec of flow): %d\n\n', pumpData(row, column));