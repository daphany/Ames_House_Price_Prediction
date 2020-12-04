SELECT house_id
, mssubclass_id														AS mssubclass  /*No Nulls*/
, case when mszoning_id= 'A' then '1'  
	when mszoning_id= 'A' then '2' 
	when mszoning_id= 'FV' then '3' 
	when mszoning_id= 'I' then '4' 
	when mszoning_id= 'RH' then '5' 
	when mszoning_id= 'RL' then '6'
	when mszoning_id= 'RP' then '7'
	when mszoning_id= 'RM' then '8'
	else '0' end 													AS mszoning /*Converting Categorical to Numeric*/
, COALESCE(lotfrontage,0)											AS lotfrontage /*Replace Null with 0*/
, lotarea															AS lotarea /*No Nulls*/
, case when street_id= 'Pave' then 1 
	when street_id= 'Grvl' then 2
	else 0 end 														AS street /*Converting Categorical to Numeric*/
, case when alley_id= 'Pave' then 1 
	when alley_id= 'Grvl' then 2
	else 0 end 														AS alley /*Converting Categorical to Numeric*/
, case when lotshape_id= 'Reg' then 1 else 0 end					AS lotshape /*Converting to Categorical regular shape or not*/

from house_prices

, case when landcontour_id= ' ' then 'test' else end AS landcontour
, case when utilities_id= ' ' then 'test' else end AS utilities
, case when lotconfig_id= ' ' then 'test' else end AS lotconfig
, case when landslope_id= ' ' then 'test' else end AS landslope
, case when neighborhood_id= ' ' then 'test' else end AS neighborhood
, case when condition1_id= ' ' then 'test' else end AS condition1
, case when condition2_id= ' ' then 'test' else end AS condition2
, case when bldgtype_id= ' ' then 'test' else end AS bldgtype
, case when housestyle_id= ' ' then 'test' else end AS housestyle
, case when overallqual_id= ' ' then 'test' else end AS overallqual
, case when overallcond_id= ' ' then 'test' else end AS overallcond
, case when yearbuilt= ' ' then 'test' else end AS yearbuilt
, case when yearremodadd= ' ' then 'test' else end AS yearremodadd
, case when roofstyle_id= ' ' then 'test' else end AS roofstyle
, case when roofmatl_id= ' ' then 'test' else end AS roofmatl
, case when exterior1st_id= ' ' then 'test' else end AS exterior1st
, case when exterior2nd_id= ' ' then 'test' else end AS exterior2nd
, case when masvnrtype_id= ' ' then 'test' else end AS masvnrtype
, case when masvnrarea= ' ' then 'test' else end AS masvnrarea
, case when exterqual_id= ' ' then 'test' else end AS exterqual
, case when extercond_id= ' ' then 'test' else end AS extercond
, case when foundation_id= ' ' then 'test' else end AS foundation
, case when bsmtqual_id= ' ' then 'test' else end AS bsmtqual
, case when bsmtcond_id= ' ' then 'test' else end AS bsmtcond
, case when bsmtexposure_id= ' ' then 'test' else end AS bsmtexposure
, case when bsmtfintype1_id= ' ' then 'test' else end AS bsmtfintype1
, case when bsmtfinsf1= ' ' then 'test' else end AS bsmtfinsf1
, case when bsmtfintype2_id= ' ' then 'test' else end AS bsmtfintype2
, case when bsmtfinsf2= ' ' then 'test' else end AS bsmtfinsf2
, case when bsmtunfsf= ' ' then 'test' else end AS bsmtunfsf
, case when totalbsmtsf= ' ' then 'test' else end AS totalbsmtsf
, case when heating_id= ' ' then 'test' else end AS heating
, case when heatingqc_id= ' ' then 'test' else end AS heatingqc
, case when centralair= ' ' then 'test' else end AS centralair
, case when electrical_id= ' ' then 'test' else end AS electrical
, case when 1stflrsf= ' ' then 'test' else end AS 1stflrsf
, case when 2ndflrsf= ' ' then 'test' else end AS 2ndflrsf
, case when lowqualfinsf= ' ' then 'test' else end AS lowqualfinsf
, case when grlivarea= ' ' then 'test' else end AS grlivarea
, case when bsmtfullbath= ' ' then 'test' else end AS bsmtfullbath
, case when bsmthalfbath= ' ' then 'test' else end AS bsmthalfbath
, case when fullbath= ' ' then 'test' else end AS fullbath
, case when halfbath= ' ' then 'test' else end AS halfbath
, case when bedroomabvgr= ' ' then 'test' else end AS bedroomabvgr
, case when kitchenabvgr= ' ' then 'test' else end AS kitchenabvgr
, case when kitchenqual_id= ' ' then 'test' else end AS kitchenqual
, case when totrmsabvgrd= ' ' then 'test' else end AS totrmsabvgrd
, case when functional_id= ' ' then 'test' else end AS functional
, case when fireplaces= ' ' then 'test' else end AS fireplaces
, case when fireplacequ_id= ' ' then 'test' else end AS fireplacequ
, case when garagetype_id= ' ' then 'test' else end AS garagetype
, case when garageyrblt= ' ' then 'test' else end AS garageyrblt
, case when garagefinish_id= ' ' then 'test' else end AS garagefinish
, case when garagecars= ' ' then 'test' else end AS garagecars
, case when garagearea= ' ' then 'test' else end AS garagearea
, case when garagequal_id= ' ' then 'test' else end AS garagequal
, case when garagecond_id= ' ' then 'test' else end AS garagecond
, case when paveddrive_id= ' ' then 'test' else end AS paveddrive
, case when wooddecksf= ' ' then 'test' else end AS wooddecksf
, case when openporchsf= ' ' then 'test' else end AS openporchsf
, case when enclosedporch= ' ' then 'test' else end AS enclosedporch
, case when 3ssnporch= ' ' then 'test' else end AS 3ssnporch
, case when screenporch= ' ' then 'test' else end AS screenporch
, case when poolarea= ' ' then 'test' else end AS poolarea
, case when poolqc_id= ' ' then 'test' else end AS poolqc
, case when fence_id= ' ' then 'test' else end AS fence
, case when miscfeature_id= ' ' then 'test' else end AS miscfeature
, case when miscval= ' ' then 'test' else end AS miscval
, case when mosold= ' ' then 'test' else end AS mosold
, case when yrsold= ' ' then 'test' else end AS yrsold
, case when saletype_id= ' ' then 'test' else end AS saletype
, case when salecondition_id= ' ' then 'test' else end AS salecondition
, case when saleprice= ' ' then 'test' else end AS saleprice
, case when data_type= ' ' then 'test' else end AS data_type
FROM house_prices
WHERE house_id = 2251

