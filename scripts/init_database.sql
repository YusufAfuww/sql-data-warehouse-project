/*
========================================
Create Database and Schemas
========================================
Script Purpose:
  This script creates a new database named 'Datawarehouse' after checking if it already exists.
  If the database already exists, it is dropped and recreated. Additionally, the script sets up three
  schemas within the database: 'bronze', 'silver', 'gold'.

Warning:
  Running this scripts will drop the entire 'Datawarehouse' database if it already exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you
  have proper backups before running this script.
*/

-- Create Database 'DataWarehouse'

use master;
GO

-- Drop and recreate the 'Datawarehouse' database:
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER database Datawarehouse set single user with rollback immediate;
    DROP database Datawarehouse;
  END;
  GO

-- Create the database 'Datawarehouse':
create database Datawarehouse;
GO
  
use Datawarehouse;
GO

-- Create Schemas:
create schema bronze;
GO
  
create schema silver;
GO
  
create schema gold;
GO





