-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dmaj8o
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE ames (
    ames_order int NOT NULL,
    pid varchar NOT NULL,
    mssubclass varchar,
    mszoning varchar,
    lotfrontage int,
    lotarea int,
    street varchar,
    alley varchar,
    lotshape varchar,
    landcontour varchar,
    utilities varchar,
    lotconfig varchar,
    landslope varchar,
    neighborhood varchar,
    condition1 varchar,
    condition2 varchar,
    bldgtype varchar,
    housestyle varchar,
    overallqual varchar,
    overallcond varchar,
    yearbuilt int,
    yearremodadd int,
    roofstyle varchar,
    roofmatl varchar,
    exterior1st varchar,
    exterior2nd varchar,
    masvnrtype varchar,
    masvnrarea int,
    exterqual varchar,
    extercond varchar,
    foundation varchar,
    bsmtqual varchar,
    bsmtcond varchar,
    bsmtexposure varchar,
    bsmtfintype1 varchar,
    bsmtfinsf1 int,
    bsmtfintype2 varchar,
    bsmtfinsf2 int,
    bsmtunfsf int,
    totalbsmtsf int,
    heating varchar,
    heatingqc varchar,
    centralair varchar,
    electrical varchar,
    "1stflrsf" int,
    "2ndflrsf" int,
    lowqualfinsf int,
    grlivarea int,
    bsmtfullbath int,
    bsmthalfbath int,
    fullbath int,
    halfbath int,
    bedroomabvgr int,
    kitchenabvgr int,
    kitchenqual varchar,
    totrmsabvgrd int,
    functional varchar,
    fireplaces int,
    fireplacequ varchar,
    garagetype varchar,
    garageyrblt int,
    garagefinish varchar,
    garagecars int,
    garagearea int,
    garagequal varchar,
    garagecond varchar,
    paveddrive varchar,
    wooddecksf int,
    openporchsf int,
    enclosedporch int,
    "3ssnporch" int,
    screenporch int,
    poolarea int,
    poolqc varchar,
    fence varchar,
    miscfeature varchar,
    miscval int,
    mosold int,
    yrsold int,
    saletype varchar,
    salecondition varchar,
    saleprice int,
    CONSTRAINT pk_ames PRIMARY KEY (
        pid
     )
);

CREATE TABLE ames_geo (
    geo_id int NOT NULL,
    pid varchar NOT NULL,
    longitude numeric NOT NULL,
    latitude numeric NOT NULL,
    CONSTRAINT pk_ames_geo PRIMARY KEY (
        geo_id
     )
);

CREATE TABLE ames_col_desc (
    id int,
    abbr varchar(10),
    description varchar(100),
    column_name varchar(20),
    CONSTRAINT pk_ames_col_desc PRIMARY KEY (
        id
     )
);

ALTER TABLE ames_geo ADD CONSTRAINT fk_ames_geo_pid FOREIGN KEY(pid)
REFERENCES ames (pid);

CREATE SEQUENCE seq_acd_id
START 1
INCREMENT 1
MINVALUE 1
OWNED BY ames_col_desc.id;


