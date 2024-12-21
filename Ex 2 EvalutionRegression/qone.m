0%giving the data
yPred = [3.3; 4.4; 8.8; 5];
yActual = [2.7; 4.5; 7.3; 2.3];

%calling the function - evaluateRegressionModel to find the evaluation
%metrics
metrics = evaluationmetrics(yPred, yActual);

%displaying the metrics 
disp(metrics);
