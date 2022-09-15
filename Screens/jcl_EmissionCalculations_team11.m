% This function was made by Joshua Lamb. Using the predefined variables
% this function will calculate and return a vector of the user's food
% emissions, car emissions, utilities emissions, total emissions, and the
% average U.S. citizen's food emissions, car emissions, utilities
% emissions, and total emissions.

% "On my honor, I, Joshua Lamb, have neither given nor received
% unathorized aid in doing this assignment."

function jcl_EmissionCalculations_team11()

    % Predefined variables from sources
    lbVegCost = 0.64;
    lbco2PerlbVeg = 2;
    lbMeatCost = 5.56;
    lbco2PerlbMeat = 19.2727;
    lbMeatMadeAnnuallyUS = 100230000000;
    lbVegMadeAnnuallyUS = 120700000000;
    populationUS = 333580858;
    lbco2PerMiDriven = 0.906;
    lbco2PerkWhr = 1.563;
    lbco2PerGalWater = 0.008999;
    lbco2FromCarsAnnuallyUS = 1680580000000;
    lbco2FromUtilitiesAnnuallyUS = 3791950000000;
    
    % Pull in user input information from base workspace
    meatExpenses = evalin('base', 'meatExpenses');
    vegetableExpenses = evalin('base', 'vegetableExpenses');
    milesDriven = evalin('base', 'milesDriven');
    kWhElectricity = evalin('base', 'kWhElectricity');
    galsWater = evalin('base', 'galsWater');
    
    % --------User emissions--------
    
    % Calculate user annual meat emissions
    lbsMeat = meatExpenses / lbMeatCost;
    annualMeatco2 = lbsMeat * lbco2PerlbMeat;
    % Calculate user annual vegetable emissions
    lbsVeg = vegetableExpenses / lbVegCost;
    annualVegco2 = lbsVeg * lbco2PerlbVeg;
    % Calculate user total annual food emissions & assign to base workspace
    foodEmissions = annualMeatco2 + annualVegco2;
    assignin('base', 'foodEmissions', foodEmissions);
    
    % Calculate user annual driving emissions & assign to base workspace
    carEmissions = milesDriven * lbco2PerMiDriven;
    assignin('base', 'carEmissions', carEmissions);
    
    % Calculate user annual electricity emissions
    annualElectricityco2 = kWhElectricity * lbco2PerkWhr;
    % Calculate user annual water emissions
    annualWaterco2 = galsWater * lbco2PerGalWater;
    % Calculate user total annual utilities emissions & assign to base
    % workspace
    utilEmissions = annualElectricityco2 + annualWaterco2;
    assignin('base', 'utilEmissions', utilEmissions);
    
    % Calculate user total annual emissions & assign to base workspace
    assignin('base', 'totalEmissions', foodEmissions + carEmissions); 
    
    % --------Average citizen emissions--------
    
    % Calculate average citizen annual meat emissions
    avgCitlbMeat = lbMeatMadeAnnuallyUS / populationUS;
    avgCitMeatco2 = avgCitlbMeat * lbco2PerlbMeat;
    % Calculate average citizen annual vegetable emissions
    avgCitlbVeg = lbVegMadeAnnuallyUS / populationUS;
    avgCitVegco2 = avgCitlbVeg * lbco2PerlbVeg;
    % Calculate average citizen total annual food emissions & assign to
    % base workspace
    avgCitFoodEmissions = avgCitMeatco2 + avgCitVegco2;
    assignin('base', 'avgCitFoodEmissions', avgCitFoodEmissions);
    
    % Calculate average citizen annual driving emissions & assign to base
    % workspace
    avgCitCarEmissions = lbco2FromCarsAnnuallyUS / populationUS;
    assignin('base', 'avgCitCarEmissions', avgCitCarEmissions);
    
    % Calculate average citizen annual utilities emissions & assign to base
    % workspace
    avgCitUtilEmissions = lbco2FromUtilitiesAnnuallyUS / populationUS;
    assignin('base', 'avgCitUtilEmissions', avgCitUtilEmissions);
    
    % Calculate average citizen total annual emissions & assign to base
    % workspace
    assignin('base', 'avgCitTotalEmissions', avgCitFoodEmissions + avgCitCarEmissions + avgCitUtilEmissions);
end

