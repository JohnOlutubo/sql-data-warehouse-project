/*
======================================================================
Create Database and schemas
======================================================================
Script purpose:
    This script creates a new database named 'DataWarehouse' after checking whether it exists.
    If the database exists, it is dropped and recreated. Additionally the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running the script will drop the entire database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backup before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO;

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO