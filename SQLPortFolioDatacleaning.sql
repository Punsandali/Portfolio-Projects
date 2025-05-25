/* cleaning data in SQL queries*/


select SaleDate,CONVERT(Date,SaleDate) from PortfolioProject..NashvilleHousing

Update NashvilleHousing SET	SaleDate=CONVERT(Date,SaleDate)


select SaleDate from PortfolioProject..NashvilleHousing

Alter table NashvilleHousing
Add SaleDateConverted Date;

Update NashvilleHousing SET	SaleDateConverted=CONVERT(Date,SaleDate)

select * from PortfolioProject..NashvilleHousing

--Populate Property address data 

select * from PortfolioProject..NashvilleHousing order by ParcelID

select a.ParcelID,a.PropertyAddress,b.ParcelID,b.PropertyAddress,ISNULL(a.PropertyAddress,b.PropertyAddress)from PortfolioProject..NashvilleHousing a join PortfolioProject..NashvilleHousing b on a.ParcelID=b.ParcelID
AND a.[UniqueID]<>b.[UniqueID]  
where a.PropertyAddress is null


Update a
set PropertyAddress=ISNULL(a.PropertyAddress,b.PropertyAddress)
from PortfolioProject..NashvilleHousing a join PortfolioProject..NashvilleHousing b on a.ParcelID=b.ParcelID
AND a.[UniqueID]<>b.[UniqueID]  
where a.PropertyAddress is null



--breaking out Address into individual columns(Address,city,state)
select PropertyAddress
from PortfolioProject..NashvilleHousing 


SELECT 
  SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1) AS Address,
 
FROM PortfolioProject..NashvilleHousing




