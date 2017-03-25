% Header

% Clear Workspace and Command Window
clear, clc

% Load data
pumpData = load('Pumps.csv');

% Accept user input
fprintf('Pump efficiencies: 0.80, 0.83, 0.86, 0.89, 0.92\n');
efficiencyLower = input('Input lower bound: ');
efficiencyUpper = input('Input upper bound: ');
fprintf('\n');
fprintf('Effective performance ratings: 20, 30, ..., 110, 120\n');
ratingLower = input('Input lower bound: ');
ratingUpper = input('Input upper bound: ');

% Find lower bound column of data
n = 1;
while(abs(efficiencyLower - pumpData(1, n)) > 0.0005)
    n = n + 1;
end
lowerColumn = n;

% Find upper bound column of data
n = 1;
while(abs(efficiencyUpper - pumpData(1, n)) > 0.0005)
    n = n + 1;
end
upperColumn = n;

% Find lower bound row of data
n = 2;
while(abs(ratingLower ~= pumpData(n, 6)) > 0.0005)
    n = n + 1;
end
lowerRow = n;

% Find upper bound row of data
n = 2;
while(abs(ratingUpper ~= pumpData(n, 6)) > 0.0005)
    n = n + 1;
end
upperRow = n;

filteredPumpData = pumpData(lowerRow:upperRow, lowerColumn:upperColumn);
