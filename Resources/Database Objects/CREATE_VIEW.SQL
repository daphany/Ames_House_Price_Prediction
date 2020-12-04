, case when alley_id= ' ' then 'test' else end AS alley
, case when lotshape_id= ' ' then 'test' else end AS lotshape

select alley_id, count(*) from house_prices group by alley_id
select lotshape_id, count(*) from house_prices group by lotshape_id
select LandContour_id, count(*) from house_prices group by LandContour_id
ALTER TABLE patients ADD id_2 INT IDENTITY
ALTER TABLE patients ADD COLUMN id_2 SERIAL;

/*CREATE OR REPLACE VIEW house_price_df 
AS (
*/
SELECT 
house_id
,mssubclass_id
,mszoning_id
,lotfrontage
,OverallQual_id
,YearBuilt
,totalbsmtsf
,"1stflrsf"
,grlivarea
,FullBath
,TotRmsAbvGrd	
,case when GarageCars is null then 0 else GarageCars end AS GarageCars
,case when GarageArea is null then 0 else GarageArea end AS GarageArea 
,neighborhood_id
,housestyle_id
,overallqual_id
,overallcond_id
,saleprice
,data_type
FROM HOUSE_PRICES 
/* WHERE neighborhood_id IS NULL
OR housestyle_id IS NULL
OR overallqual_id IS NULL
OR overallcond_id IS NULL
	) */

/* select * from house_price_df */