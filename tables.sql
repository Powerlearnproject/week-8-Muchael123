-- Create Farmers table
CREATE TABLE Farmers (
    FarmerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Region VARCHAR(50),
    CropType VARCHAR(50),
    AnnualYield INT
);

-- Create Markets table
CREATE TABLE Markets (
    MarketID INT PRIMARY KEY,
    Location VARCHAR(100),
    Population INT,
    FoodDemand INT
);

-- Create Distribution Centers table
CREATE TABLE DistributionCenters (
    CenterID INT PRIMARY KEY,
    Region VARCHAR(50),
    Capacity INT
);

-- Create FoodDistribution table
CREATE TABLE FoodDistribution (
    DistributionID INT PRIMARY KEY,
    CenterID INT,
    MarketID INT,
    QuantityDistributed INT,
    Date DATE,
    FOREIGN KEY (CenterID) REFERENCES DistributionCenters(CenterID),
    FOREIGN KEY (MarketID) REFERENCES Markets(MarketID)
);

-- Insert sample data for Farmers
INSERT INTO Farmers VALUES 
(1, 'John Doe', 'Region A', 'Maize', 500),
(2, 'Jane Smith', 'Region B', 'Rice', 800);

-- Insert sample data for Markets
INSERT INTO Markets VALUES 
(1, 'City Market', 100000, 20000),
(2, 'Rural Market', 50000, 10000);

-- Insert sample data for Distribution Centers
INSERT INTO DistributionCenters VALUES 
(1, 'Region A', 10000),
(2, 'Region B', 15000);

-- Insert sample data for FoodDistribution
INSERT INTO FoodDistribution VALUES 
(1, 1, 1, 5000, '2025-01-01'),
(2, 2, 2, 3000, '2025-01-02');
