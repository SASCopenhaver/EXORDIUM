<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_REGIONS_s">
<cfset local.spr_P_UI_REGIONS_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "", 
																			PP_SQL_ORDER_TX: "ORDER BY REGION_NAME ")>
<cfset local.sprSerializeJSON_P_UI_REGIONS_s = SerializeJSON("#local.spr_P_UI_REGIONS_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_REGIONS_s#" >
--->
<cfset local.sprSerializeJSON_P_UI_REGIONS_s = '{"COLUMNS":["ROWID","REGION_ID","REGION_NAME"],"DATA":[["AAAYldAAOAAAAHDAAB",2,"Americas"],["AAAYldAAOAAAAHDAAC",3,"Asia"],["AAAYldAAOAAAAHDAAA",1,"Europe"],["AAAYldAAOAAAAHDAAD",4,"Middle East and Africa"]]}'>
<!--- --------------------------------------------------------------------- --->
<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_COUNTRIES_s">
<cfset local.spr_P_UI_COUNTRIES_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "", 
																			PP_SQL_ORDER_TX: "ORDER BY REGION_ID, COUNTRY_NAME ")>
<cfset local.sprSerializeJSON_P_UI_COUNTRIES_s = SerializeJSON("#local.spr_P_UI_COUNTRIES_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_COUNTRIES_s#" abort="true" >
--->
<cfset local.sprSerializeJSON_P_UI_COUNTRIES_s = '{"COLUMNS":["ROWID","COUNTRY_ID","COUNTRY_NAME","REGION_ID"],"DATA":[["*BAOAAbsCQkX+","BE","Belgium",1],["*BAOAAbsCREv+","DK","Denmark",1],["*BAOAAbsCRlL+","FR","France",1],["*BAOAAbsCREX+","DE","Germany",1],["*BAOAAbsCSVT+","IT","Italy",1],["*BAOAAbsCTkz+","NL","Netherlands",1],["*BAOAAbsCQ0j+","CH","Switzerland",1],["*BAOAAbsCVUv+","UK","United Kingdom",1],["*BAOAAbsCQVL+","AR","Argentina",2],["*BAOAAbsCQlL+","BR","Brazil",2],["*BAOAAbsCQ0H+","CA","Canada",2],["*BAOAAbsCTVj+","MX","Mexico",2],["*BAOAAbsCVVP+","US","United States of America",2],["*BAOAAbsCQVX+","AU","Australia",3],["*BAOAAbsCQ07+","CN","China",3],["*BAOAAbsCSU7+","IN","India",3],["*BAOAAbsCSlD+","JP","Japan",3],["*BAOAAbsCTUz+","ML","Malaysia",3],["*BAOAAbsCU0f+","SG","Singapore",3],["*BAOAAbsCRUf+","EG","Egypt",4],["*BAOAAbsCSUz+","IL","Israel",4],["*BAOAAbsCS1f+","KW","Kuwait",4],["*BAOAAbsCTkf+","NG","Nigeria",4],["*BAOAAbsCWk3+","ZM","Zambia",4],["*BAOAAbsCWlf+","ZW","Zimbabwe",4]]}'>
<!--- --------------------------------------------------------------------- --->
<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_LOCATIONS_s">
<cfset local.spr_P_UI_LOCATIONS_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "", 
																			PP_SQL_ORDER_TX: "ORDER BY COUNTRY_ID, CITY ")>
<cfset local.sprSerializeJSON_P_UI_LOCATIONS_s = SerializeJSON("#local.spr_P_UI_LOCATIONS_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_LOCATIONS_s#" abort="true" >
--->
<cfset local.sprSerializeJSON_P_UI_LOCATIONS_s = '{"COLUMNS":["ROWID","LOCATION_ID","STREET_ADDRESS","POSTAL_CODE","CITY","STATE_PROVINCE","COUNTRY_ID"],"DATA":[["AAAYleAAOAAAAHLAAM",2200,"12-98 Victoria Street","2901","Sydney","New South Wales","AU"],["AAAYleAAOAAAAHLAAS",2800,"Rua Frei Caneca 1360 ","01307-002","Sao Paulo","Sao Paulo","BR"],["AAAYleAAOAAAAHLAAI",1800,"147 Spadina Ave","M5V 2L7","Toronto","Ontario","CA"],["AAAYleAAOAAAAHLAAJ",1900,"6092 Boxwood St","YSW 9T2","Whitehorse","Yukon","CA"],["AAAYleAAOAAAAHLAAU",3000,"Murtenstrasse 921","3095","Bern","BE","CH"],["AAAYleAAOAAAAHLAAT",2900,"20 Rue des Corps-Saints","1730","Geneva","Geneve","CH"],["AAAYleAAOAAAAHLAAK",2000,"40-5-12 Laogianggen","190518","Beijing",null,"CN"],["AAAYleAAOAAAAHLAAR",2700,"Schwanthalerstr. 7031","80925","Munich","Bavaria","DE"],["AAAYleAAOAAAAHLAAL",2100,"1298 Vileparle (E)","490231","Bombay","Maharashtra","IN"],["AAAYleAAOAAAAHLAAA",1000,"1297 Via Cola di Rie","00989","Roma",null,"IT"],["AAAYleAAOAAAAHLAAB",1100,"93091 Calle della Testa","10934","Venice",null,"IT"],["AAAYleAAOAAAAHLAAD",1300,"9450 Kamiya-cho","6823","Hiroshima",null,"JP"],["AAAYleAAOAAAAHLAAC",1200,"2017 Shinjuku-ku","1689","Tokyo","Tokyo Prefecture","JP"],["AAAYleAAOAAAAHLAAW",3200,"Mariano Escobedo 9991","11932","Mexico City","Distrito Federal","MX"],["AAAYleAAOAAAAHLAAV",3100,"Pieter Breughelstraat 837","3029SK","Utrecht","Utrecht","NL"],["AAAYleAAOAAAAHLAAN",2300,"198 Clementi North","540198","Singapore",null,"SG"],["AAAYleAAOAAAAHLAAO",2400,"8204 Arthur St",null,"London",null,"UK"],["AAAYleAAOAAAAHLAAP",2500,"Magdalen Centre, The Oxford Science Park","OX9 9ZB","Oxford","Oxford","UK"],["AAAYleAAOAAAAHLAAQ",2600,"9702 Chester Road","09629850293","Stretford","Manchester","UK"],["AAAYleAAOAAAAHLAAH",1700,"2004 Charade Rd","98199","Seattle","Washington","US"],["AAAYleAAOAAAAHLAAG",1600,"2007 Zagora St","50090","South Brunswick","New Jersey","US"],["AAAYleAAOAAAAHLAAF",1500,"2011 Interiors Blvd","99236","South San Francisco","California","US"],["AAAYleAAOAAAAHLAAE",1400,"2014 Jabberwocky Rd","26192","Southlake","Texas","US"]]}'>
<!--- --------------------------------------------------------------------- --->
<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_DEPARTMENTS_s">
<cfset local.spr_P_UI_DEPARTMENTS_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "", 
																			PP_SQL_ORDER_TX: "ORDER BY LOCATION_ID, DEPARTMENT_NAME ")>
<cfset local.sprSerializeJSON_P_UI_DEPARTMENTS_s = SerializeJSON("#local.spr_P_UI_DEPARTMENTS_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_DEPARTMENTS_s#" abort="true" >
--->
<cfset local.sprSerializeJSON_P_UI_DEPARTMENTS_s = '{"COLUMNS":["ROWID","DEPARTMENT_ID","DEPARTMENT_NAME","MANAGER_ID","LOCATION_ID"],"DATA":[["AAAYlfAAOAAAAHTAAF",60,"IT",103,1400],["AAAYlfAAOAAAAHTAAE",50,"Shipping",121,1500],["AAAYlfAAOAAAAHTAAK",110,"Accounting",205,1700],["AAAYlfAAOAAAAHTAAA",10,"Administration",200,1700],["AAAYlfAAOAAAAHTAAP",160,"Benefits",null,1700],["AAAYlfAAOAAAAHTAAR",180,"Construction",null,1700],["AAAYlfAAOAAAAHTAAS",190,"Contracting",null,1700],["AAAYlfAAOAAAAHTAAN",140,"Control And Credit",null,1700],["AAAYlfAAOAAAAHTAAM",130,"Corporate Tax",null,1700],["AAAYlfAAOAAAAHTAAI",90,"Executive",100,1700],["AAAYlfAAOAAAAHTAAJ",100,"Finance",108,1700],["AAAYlfAAOAAAAHTAAX",240,"Government Sales",null,1700],["AAAYlfAAOAAAAHTAAW",230,"IT Helpdesk",null,1700],["AAAYlfAAOAAAAHTAAU",210,"IT Support",null,1700],["AAAYlfAAOAAAAHTAAQ",170,"Manufacturing",null,1700],["AAAYlfAAOAAAAHTAAV",220,"NOC",null,1700],["AAAYlfAAOAAAAHTAAT",200,"Operations",null,1700],["AAAYlfAAOAAAAHTAAa",270,"Payroll",null,1700],["AAAYlfAAOAAAAHTAAC",30,"Purchasing",114,1700],["AAAYlfAAOAAAAHTAAZ",260,"Recruiting",null,1700],["AAAYlfAAOAAAAHTAAY",250,"Retail Sales",null,1700],["AAAYlfAAOAAAAHTAAO",150,"Shareholder Services",null,1700],["AAAYlfAAOAAAAHTAAL",120,"Treasury",null,1700],["AAAYlfAAOAAAAHTAAB",20,"Marketing",201,1800],["AAAYlfAAOAAAAHTAAD",40,"Human Resources",203,2400],["AAAYlfAAOAAAAHTAAH",80,"Sales",145,2500],["AAAYlfAAOAAAAHTAAG",70,"Public Relations",204,2700]]}'>
<!--- --------------------------------------------------------------------- --->
<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_EMPLOYEES_s">
<cfset local.spr_P_UI_EMPLOYEES_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "", 
																			PP_SQL_ORDER_TX: "ORDER BY DEPARTMENT_ID, LAST_NAME ")>
<cfset local.sprSerializeJSON_P_UI_EMPLOYEES_s = SerializeJSON("#local.spr_P_UI_EMPLOYEES_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_EMPLOYEES_s#" abort="true" >
--->
<cfset local.sprSerializeJSON_P_UI_EMPLOYEES_s = '{"COLUMNS":["ROWID","EMPLOYEE_ID","FIRST_NAME","LAST_NAME","EMAIL","PHONE_NUMBER","HIRE_DATE","JOB_ID","SALARY","COMMISSION_PCT","MANAGER_ID","DEPARTMENT_ID"],"DATA":[["AAAYlgAAOAAAAHbAAB",100,"Steven","King","SKING","515.123.4567","June, 17 2003 00:00:00","AD_PRES",24000.00,null,null,90],["AAAYlgAAOAAAAHfAAC",201,"Michael","Hartstein","MHARTSTE","515.123.5555","February, 17 2004 00:00:00","MK_MAN",13000.00,null,100,20],["AAAYlgAAOAAAAHfAAD",202,"Pat","Fay","PFAY","603.123.6666","August, 17 2005 00:00:00","MK_REP",6000.00,null,201,20],["AAAYlgAAOAAAAHbAAP",114,"Den","Raphaely","DRAPHEAL","515.127.4561","December, 07 2002 00:00:00","PU_MAN",11000.00,null,100,30],["AAAYlgAAOAAAAHbAAR",116,"Shelli","Baida","SBAIDA","515.127.4563","December, 24 2005 00:00:00","PU_CLERK",2900.00,null,114,30],["AAAYlgAAOAAAAHbAAU",119,"Karen","Colmenares","KCOLMENA","515.127.4566","August, 10 2007 00:00:00","PU_CLERK",2500.00,null,114,30],["AAAYlgAAOAAAAHbAAT",118,"Guy","Himuro","GHIMURO","515.127.4565","November, 15 2006 00:00:00","PU_CLERK",2600.00,null,114,30],["AAAYlgAAOAAAAHbAAQ",115,"Alexander","Khoo","AKHOO","515.127.4562","May, 18 2003 00:00:00","PU_CLERK",3100.00,null,114,30],["AAAYlgAAOAAAAHbAAS",117,"Sigal","Tobias","STOBIAS","515.127.4564","July, 24 2005 00:00:00","PU_CLERK",2800.00,null,114,30],["AAAYlgAAOAAAAHbAAW",121,"Adam","Fripp","AFRIPP","650.123.2234","April, 10 2005 00:00:00","ST_MAN",8200.00,null,100,50],["AAAYlgAAOAAAAHbAAf",130,"Mozhe","Atkinson","MATKINSO","650.124.6234","October, 30 2005 00:00:00","ST_CLERK",2800.00,null,121,50],["AAAYlgAAOAAAAHbAAe",129,"Laura","Bissot","LBISSOT","650.124.5234","August, 20 2005 00:00:00","ST_CLERK",3300.00,null,121,50],["AAAYlgAAOAAAAHbABW",185,"Alexis","Bull","ABULL","650.509.2876","February, 20 2005 00:00:00","SH_CLERK",4100.00,null,121,50],["AAAYlgAAOAAAAHbABY",187,"Anthony","Cabrio","ACABRIO","650.509.4876","February, 07 2007 00:00:00","SH_CLERK",3000.00,null,121,50],["AAAYlgAAOAAAAHbABX",186,"Julia","Dellinger","JDELLING","650.509.3876","June, 24 2006 00:00:00","SH_CLERK",3400.00,null,121,50],["AAAYlgAAOAAAAHbAAg",131,"James","Marlow","JAMRLOW","650.124.7234","February, 16 2005 00:00:00","ST_CLERK",2500.00,null,121,50],["AAAYlgAAOAAAAHbAAh",132,"TJ","Olson","TJOLSON","650.124.8234","April, 10 2007 00:00:00","ST_CLERK",2100.00,null,121,50],["AAAYlgAAOAAAAHbABV",184,"Nandita","Sarchand","NSARCHAN","650.509.1876","January, 27 2004 00:00:00","SH_CLERK",4200.00,null,121,50],["AAAYlgAAOAAAAHbAAX",122,"Payam","Kaufling","PKAUFLIN","650.123.3234","May, 01 2003 00:00:00","ST_MAN",7900.00,null,100,50],["AAAYlgAAOAAAAHbABZ",188,"Kelly","Chung","KCHUNG","650.505.1876","June, 14 2005 00:00:00","SH_CLERK",3800.00,null,122,50],["AAAYlgAAOAAAAHbABa",189,"Jennifer","Dilly","JDILLY","650.505.2876","August, 13 2005 00:00:00","SH_CLERK",3600.00,null,122,50],["AAAYlgAAOAAAAHbABb",190,"Timothy","Gates","TGATES","650.505.3876","July, 11 2006 00:00:00","SH_CLERK",2900.00,null,122,50],["AAAYlgAAOAAAAHbAAk",135,"Ki","Gee","KGEE","650.127.1734","December, 12 2007 00:00:00","ST_CLERK",2400.00,null,122,50],["AAAYlgAAOAAAAHbAAi",133,"Jason","Mallin","JMALLIN","650.127.1934","June, 14 2004 00:00:00","ST_CLERK",3300.00,null,122,50],["AAAYlgAAOAAAAHbABc",191,"Randall","Perkins","RPERKINS","650.505.4876","December, 19 2007 00:00:00","SH_CLERK",2500.00,null,122,50],["AAAYlgAAOAAAAHbAAl",136,"Hazel","Philtanker","HPHILTAN","650.127.1634","February, 06 2008 00:00:00","ST_CLERK",2200.00,null,122,50],["AAAYlgAAOAAAAHbAAj",134,"Michael","Rogers","MROGERS","650.127.1834","August, 26 2006 00:00:00","ST_CLERK",2900.00,null,122,50],["AAAYlgAAOAAAAHbAAZ",124,"Kevin","Mourgos","KMOURGOS","650.123.5234","November, 16 2007 00:00:00","ST_MAN",5800.00,null,100,50],["AAAYlgAAOAAAAHbAAr",142,"Curtis","Davies","CDAVIES","650.121.2994","January, 29 2005 00:00:00","ST_CLERK",3100.00,null,124,50],["AAAYlgAAOAAAAHbABi",197,"Kevin","Feeney","KFEENEY","650.507.9822","May, 23 2006 00:00:00","SH_CLERK",3000.00,null,124,50],["AAAYlgAAOAAAAHfAAA",199,"Douglas","Grant","DGRANT","650.507.9844","January, 13 2008 00:00:00","SH_CLERK",2600.00,null,124,50],["AAAYlgAAOAAAAHbAAs",143,"Randall","Matos","RMATOS","650.121.2874","March, 15 2006 00:00:00","ST_CLERK",2600.00,null,124,50],["AAAYlgAAOAAAAHcAAA",198,"Donald","OConnell","DOCONNEL","650.507.9833","June, 21 2007 00:00:00","SH_CLERK",2600.00,null,124,50],["AAAYlgAAOAAAAHbAAq",141,"Trenna","Rajs","TRAJS","650.121.8009","October, 17 2003 00:00:00","ST_CLERK",3500.00,null,124,50],["AAAYlgAAOAAAAHbAAt",144,"Peter","Vargas","PVARGAS","650.121.2004","July, 09 2006 00:00:00","ST_CLERK",2500.00,null,124,50],["AAAYlgAAOAAAAHbABh",196,"Alana","Walsh","AWALSH","650.507.9811","April, 24 2006 00:00:00","SH_CLERK",3100.00,null,124,50],["AAAYlgAAOAAAAHbAAY",123,"Shanta","Vollman","SVOLLMAN","650.123.4234","October, 10 2005 00:00:00","ST_MAN",6500.00,null,100,50],["AAAYlgAAOAAAAHbABd",192,"Sarah","Bell","SBELL","650.501.1876","February, 04 2004 00:00:00","SH_CLERK",4000.00,null,123,50],["AAAYlgAAOAAAAHbABe",193,"Britney","Everett","BEVERETT","650.501.2876","March, 03 2005 00:00:00","SH_CLERK",3900.00,null,123,50],["AAAYlgAAOAAAAHbABg",195,"Vance","Jones","VJONES","650.501.4876","March, 17 2007 00:00:00","SH_CLERK",2800.00,null,123,50],["AAAYlgAAOAAAAHbAAm",137,"Renske","Ladwig","RLADWIG","650.121.1234","July, 14 2003 00:00:00","ST_CLERK",3600.00,null,123,50],["AAAYlgAAOAAAAHbABf",194,"Samuel","McCain","SMCCAIN","650.501.3876","July, 01 2006 00:00:00","SH_CLERK",3200.00,null,123,50],["AAAYlgAAOAAAAHbAAp",140,"Joshua","Patel","JPATEL","650.121.1834","April, 06 2006 00:00:00","ST_CLERK",2500.00,null,123,50],["AAAYlgAAOAAAAHbAAo",139,"John","Seo","JSEO","650.121.2019","February, 12 2006 00:00:00","ST_CLERK",2700.00,null,123,50],["AAAYlgAAOAAAAHbAAn",138,"Stephen","Stiles","SSTILES","650.121.2034","October, 26 2005 00:00:00","ST_CLERK",3200.00,null,123,50],["AAAYlgAAOAAAAHbAAV",120,"Matthew","Weiss","MWEISS","650.123.1234","July, 18 2004 00:00:00","ST_MAN",8000.00,null,100,50],["AAAYlgAAOAAAAHbABS",181,"Jean","Fleaur","JFLEAUR","650.507.9877","February, 23 2006 00:00:00","SH_CLERK",3100.00,null,120,50],["AAAYlgAAOAAAAHbABU",183,"Girard","Geoni","GGEONI","650.507.9879","February, 03 2008 00:00:00","SH_CLERK",2800.00,null,120,50],["AAAYlgAAOAAAAHbAAc",127,"James","Landry","JLANDRY","650.124.1334","January, 14 2007 00:00:00","ST_CLERK",2400.00,null,120,50],["AAAYlgAAOAAAAHbAAd",128,"Steven","Markle","SMARKLE","650.124.1434","March, 08 2008 00:00:00","ST_CLERK",2200.00,null,120,50],["AAAYlgAAOAAAAHbAAb",126,"Irene","Mikkilineni","IMIKKILI","650.124.1224","September, 28 2006 00:00:00","ST_CLERK",2700.00,null,120,50],["AAAYlgAAOAAAAHbAAa",125,"Julia","Nayer","JNAYER","650.124.1214","July, 16 2005 00:00:00","ST_CLERK",3200.00,null,120,50],["AAAYlgAAOAAAAHbABT",182,"Martha","Sullivan","MSULLIVA","650.507.9878","June, 21 2007 00:00:00","SH_CLERK",2500.00,null,120,50],["AAAYlgAAOAAAAHbABR",180,"Winston","Taylor","WTAYLOR","650.507.9876","January, 24 2006 00:00:00","SH_CLERK",3200.00,null,120,50],["AAAYlgAAOAAAAHbAAx",148,"Gerald","Cambrault","GCAMBRAU","011.44.1344.619268","October, 15 2007 00:00:00","SA_MAN",11000.00,0.30,100,80],["AAAYlgAAOAAAAHbABJ",172,"Elizabeth","Bates","EBATES","011.44.1343.529268","March, 24 2007 00:00:00","SA_REP",7300.00,0.15,148,80],["AAAYlgAAOAAAAHbABG",169,"Harrison","Bloom","HBLOOM","011.44.1343.829268","March, 23 2006 00:00:00","SA_REP",10000.00,0.20,148,80],["AAAYlgAAOAAAAHbABH",170,"Tayler","Fox","TFOX","011.44.1343.729268","January, 24 2006 00:00:00","SA_REP",9600.00,0.20,148,80],["AAAYlgAAOAAAAHbABK",173,"Sundita","Kumar","SKUMAR","011.44.1343.329268","April, 21 2008 00:00:00","SA_REP",6100.00,0.10,148,80],["AAAYlgAAOAAAAHbABF",168,"Lisa","Ozer","LOZER","011.44.1343.929268","March, 11 2005 00:00:00","SA_REP",11500.00,0.25,148,80],["AAAYlgAAOAAAAHbABI",171,"William","Smith","WSMITH","011.44.1343.629268","February, 23 2007 00:00:00","SA_REP",7400.00,0.15,148,80],["AAAYlgAAOAAAAHbAAw",147,"Alberto","Errazuriz","AERRAZUR","011.44.1344.429278","March, 10 2005 00:00:00","SA_MAN",12000.00,0.30,100,80],["AAAYlgAAOAAAAHbABD",166,"Sundar","Ande","SANDE","011.44.1346.629268","March, 24 2008 00:00:00","SA_REP",6400.00,0.10,147,80],["AAAYlgAAOAAAAHbABE",167,"Amit","Banda","ABANDA","011.44.1346.729268","April, 21 2008 00:00:00","SA_REP",6200.00,0.10,147,80],["AAAYlgAAOAAAAHbABA",163,"Danielle","Greene","DGREENE","011.44.1346.229268","March, 19 2007 00:00:00","SA_REP",9500.00,0.15,147,80],["AAAYlgAAOAAAAHbABC",165,"David","Lee","DLEE","011.44.1346.529268","February, 23 2008 00:00:00","SA_REP",6800.00,0.10,147,80],["AAAYlgAAOAAAAHbABB",164,"Mattea","Marvins","MMARVINS","011.44.1346.329268","January, 24 2008 00:00:00","SA_REP",7200.00,0.10,147,80],["AAAYlgAAOAAAAHbAA/",162,"Clara","Vishney","CVISHNEY","011.44.1346.129268","November, 11 2005 00:00:00","SA_REP",10500.00,0.25,147,80],["AAAYlgAAOAAAAHbAAv",146,"Karen","Partners","KPARTNER","011.44.1344.467268","January, 05 2005 00:00:00","SA_MAN",13500.00,0.30,100,80],["AAAYlgAAOAAAAHbAA9",160,"Louise","Doran","LDORAN","011.44.1345.629268","December, 15 2005 00:00:00","SA_REP",7500.00,0.30,146,80],["AAAYlgAAOAAAAHbAA5",156,"Janette","King","JKING","011.44.1345.429268","January, 30 2004 00:00:00","SA_REP",10000.00,0.35,146,80],["AAAYlgAAOAAAAHbAA7",158,"Allan","McEwen","AMCEWEN","011.44.1345.829268","August, 01 2004 00:00:00","SA_REP",9000.00,0.35,146,80],["AAAYlgAAOAAAAHbAA+",161,"Sarath","Sewall","SSEWALL","011.44.1345.529268","November, 03 2006 00:00:00","SA_REP",7000.00,0.25,146,80],["AAAYlgAAOAAAAHbAA8",159,"Lindsey","Smith","LSMITH","011.44.1345.729268","March, 10 2005 00:00:00","SA_REP",8000.00,0.30,146,80],["AAAYlgAAOAAAAHbAA6",157,"Patrick","Sully","PSULLY","011.44.1345.929268","March, 04 2004 00:00:00","SA_REP",9500.00,0.35,146,80],["AAAYlgAAOAAAAHbAAu",145,"John","Russell","JRUSSEL","011.44.1344.429268","October, 01 2004 00:00:00","SA_MAN",14000.00,0.40,100,80],["AAAYlgAAOAAAAHbAA0",151,"David","Bernstein","DBERNSTE","011.44.1344.345268","March, 24 2005 00:00:00","SA_REP",9500.00,0.25,145,80],["AAAYlgAAOAAAAHbAA3",154,"Nanette","Cambrault","NCAMBRAU","011.44.1344.987668","December, 09 2006 00:00:00","SA_REP",7500.00,0.20,145,80],["AAAYlgAAOAAAAHbAA1",152,"Peter","Hall","PHALL","011.44.1344.478968","August, 20 2005 00:00:00","SA_REP",9000.00,0.25,145,80],["AAAYlgAAOAAAAHbAA2",153,"Christopher","Olsen","COLSEN","011.44.1344.498718","March, 30 2006 00:00:00","SA_REP",8000.00,0.20,145,80],["AAAYlgAAOAAAAHbAAz",150,"Peter","Tucker","PTUCKER","011.44.1344.129268","January, 30 2005 00:00:00","SA_REP",10000.00,0.30,145,80],["AAAYlgAAOAAAAHbAA4",155,"Oliver","Tuvault","OTUVAULT","011.44.1344.486508","November, 23 2007 00:00:00","SA_REP",7000.00,0.15,145,80],["AAAYlgAAOAAAAHbAAy",149,"Eleni","Zlotkey","EZLOTKEY","011.44.1344.429018","January, 29 2008 00:00:00","SA_MAN",10500.00,0.20,100,80],["AAAYlgAAOAAAAHbABL",174,"Ellen","Abel","EABEL","011.44.1644.429267","May, 11 2004 00:00:00","SA_REP",11000.00,0.30,149,80],["AAAYlgAAOAAAAHbABM",175,"Alyssa","Hutton","AHUTTON","011.44.1644.429266","March, 19 2005 00:00:00","SA_REP",8800.00,0.25,149,80],["AAAYlgAAOAAAAHbABQ",179,"Charles","Johnson","CJOHNSON","011.44.1644.429262","January, 04 2008 00:00:00","SA_REP",6200.00,0.10,149,80],["AAAYlgAAOAAAAHbABO",177,"Jack","Livingston","JLIVINGS","011.44.1644.429264","April, 23 2006 00:00:00","SA_REP",8400.00,0.20,149,80],["AAAYlgAAOAAAAHbABN",176,"Jonathon","Taylor","JTAYLOR","011.44.1644.429265","March, 24 2006 00:00:00","SA_REP",8600.00,0.20,149,80],["AAAYlgAAOAAAAHbABP",178,"Kimberely","Grant","KGRANT","011.44.1644.429263","May, 24 2007 00:00:00","SA_REP",7000.00,0.15,149,null],["AAAYlgAAOAAAAHbAAD",102,"Lex","De Haan","LDEHAAN","515.123.4569","January, 13 2001 00:00:00","AD_VP",17000.00,null,100,90],["AAAYlgAAOAAAAHbAAE",103,"Alexander","Hunold","AHUNOLD","590.423.4567","January, 03 2006 00:00:00","IT_PROG",9000.00,null,102,60],["AAAYlgAAOAAAAHbAAG",105,"David","Austin","DAUSTIN","590.423.4569","June, 25 2005 00:00:00","IT_PROG",4800.00,null,103,60],["AAAYlgAAOAAAAHbAAF",104,"Bruce","Ernst","BERNST","590.423.4568","May, 21 2007 00:00:00","IT_PROG",6000.00,null,103,60],["AAAYlgAAOAAAAHbAAI",107,"Diana","Lorentz","DLORENTZ","590.423.5567","February, 07 2007 00:00:00","IT_PROG",4200.00,null,103,60],["AAAYlgAAOAAAAHbAAH",106,"Valli","Pataballa","VPATABAL","590.423.4560","February, 05 2006 00:00:00","IT_PROG",4800.00,null,103,60],["AAAYlgAAOAAAAHbAAC",101,"Neena","Kochhar","NKOCHHAR","515.123.4568","September, 21 2005 00:00:00","AD_VP",17000.00,null,100,90],["AAAYlgAAOAAAAHfAAB",200,"Jennifer","Whalen","JWHALEN","515.123.4444","September, 17 2003 00:00:00","AD_ASST",4400.00,null,101,10],["AAAYlgAAOAAAAHfAAE",203,"Susan","Mavris","SMAVRIS","515.123.7777","June, 07 2002 00:00:00","HR_REP",6500.00,null,101,40],["AAAYlgAAOAAAAHfAAF",204,"Hermann","Baer","HBAER","515.123.8888","June, 07 2002 00:00:00","PR_REP",10000.00,null,101,70],["AAAYlgAAOAAAAHbAAJ",108,"Nancy","Greenberg","NGREENBE","515.124.4569","August, 17 2002 00:00:00","FI_MGR",12008.00,null,101,100],["AAAYlgAAOAAAAHbAAL",110,"John","Chen","JCHEN","515.124.4269","September, 28 2005 00:00:00","FI_ACCOUNT",8200.00,null,108,100],["AAAYlgAAOAAAAHbAAK",109,"Daniel","Faviet","DFAVIET","515.124.4169","August, 16 2002 00:00:00","FI_ACCOUNT",9000.00,null,108,100],["AAAYlgAAOAAAAHbAAO",113,"Luis","Popp","LPOPP","515.124.4567","December, 07 2007 00:00:00","FI_ACCOUNT",6900.00,null,108,100],["AAAYlgAAOAAAAHbAAM",111,"Ismael","Sciarra","ISCIARRA","515.124.4369","September, 30 2005 00:00:00","FI_ACCOUNT",7700.00,null,108,100],["AAAYlgAAOAAAAHbAAN",112,"Jose Manuel","Urman","JMURMAN","515.124.4469","March, 07 2006 00:00:00","FI_ACCOUNT",7800.00,null,108,100],["AAAYlgAAOAAAAHfAAG",205,"Shelley","Higgins","SHIGGINS","515.123.8080","June, 07 2002 00:00:00","AC_MGR",12008.00,null,101,110],["AAAYlgAAOAAAAHfAAH",206,"William","Gietz","WGIETZ","515.123.8181","June, 07 2002 00:00:00","AC_ACCOUNT",8300.00,null,205,110],["AAAYlgAAOAAAAHbAAA",999,"Sergey","Surikov","SAS","123.365.9874","June, 06 2005 00:00:00","AD_VP",20000.00,null,100,90]]}'>


<style >
h1,h2,h3, h4, h5{
	text-align: left;
}
#divAccordionContainer{
	width: 50%; 
	float: left;
}

</style>

<div id="divAccordionContainer"></div>

<script >
var vParsedP_UI_REGIONS_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_REGIONS_s#</cfoutput>');
//TEST: alert(jsdump(vParsedP_UI_REGIONS_s))
//alert(JSON.stringify(vParsedP_UI_REGIONS_s, null, 4));	
//------------------------------------------------------------------------------
var vParsedP_UI_COUNTRIES_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_COUNTRIES_s#</cfoutput>');

var vParsedP_UI_LOCATIONS_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_LOCATIONS_s#</cfoutput>');

var vParsedP_UI_DEPARTMENTS_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_DEPARTMENTS_s#</cfoutput>');

var vParsedP_UI_EMPLOYEES_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_EMPLOYEES_s#</cfoutput>');
//------------------------------------------------------------------------------
//var vdivAccordionContainer = document.getElementById("divAccordionContainer");
var h, div, p;
var $divAccordionContainer = $("#divAccordionContainer");
var cfcLink = '<cfoutput>'+'#application.urlstart##cgi.http_host##application.path.cfc#func.cfc'+'</cfoutput>';
//------------------------------------------------------------------------------
var vInitTreeview = 
{
	init: function()
	{
		this.initRegions();
		
	}
	,initRegions: function()
	{
		f_buildRegions();
	}
}
//------------------------------------------------------------------------------
$(function() {
	"use strict";
	vInitTreeview.init();
	

});
//------------------------------------------------------------------------------
function f_buildRegions()
{
	$.each(vParsedP_UI_REGIONS_s.DATA, function(key, value){
		vROWID = value[0];
		vREGION_ID = value[1];
		vREGION_NAME = value[2];

		h = of_create_h_Element(1);
		h.setAttribute("id","hhhREGION_"+vREGION_ID);
		h.setAttribute("onclick","f_onClickREGION("+vREGION_ID+")");// this ID is a NUMBER
		$(h).text(vREGION_NAME);
		div = document.createElement("div");
		div.setAttribute("id","divREGION_"+vREGION_ID);
		$divAccordionContainer.append(h);
		$divAccordionContainer.append(div);
	});
	$divAccordionContainer.accordion({heightStyle: "content",collapsible: true, active: false});	
}
//------------------------------------------------------------------------------
function f_onClickREGION(argREGION_ID)
{
	var $Container = $("#divREGION_"+argREGION_ID);
	
	var vIsAnyDataInContainer = $Container.text();
	
	if (vIsAnyDataInContainer.length === 0)
	{
				//$Container.empty();
				
				$.each(vParsedP_UI_COUNTRIES_s.DATA, function(key, value){
							vROWID        = value[0];
							vCOUNTRY_ID   = value[1]; 
							vCOUNTRY_NAME = value[2];
							vREGION_ID    = value[3];
							
						
						if (argREGION_ID === vREGION_ID)
						{
								h = of_create_h_Element(1);
								h.setAttribute("id","hhhCOUNTRY_"+vCOUNTRY_ID);
								h.setAttribute("onclick","f_onClickCOUNTRY('"+vCOUNTRY_ID+"')");
								$(h).text(vCOUNTRY_NAME);
								div = document.createElement("div");
								div.setAttribute("id","divCOUNTRY_"+vCOUNTRY_ID);
								$Container.append(h);
								$Container.append(div);				
						}
				});
				$Container.accordion({heightStyle: "content",collapsible: true, active: false});	
//			 	$Container.accordion("refresh");
	}
	
}
//------------------------------------------------------------------------------
function f_onClickCOUNTRY(argCOUNTRY_ID){
	var $Container = $("#divCOUNTRY_"+argCOUNTRY_ID) ;
	var vIsAnyDataInContainer = $Container.text();
	if (vIsAnyDataInContainer.length === 0)
	{
				//$Container.empty();
				$.each(vParsedP_UI_LOCATIONS_s.DATA, function(key, value){
							  vROWID = value[0];
							  vLOCATION_ID 	 = value[1];
							  vSTREET_ADDRESS = value[2];
							  vPOSTAL_CODE 	 = value[3];
							  vCITY 			 = value[4];
							  vSTATE_PROVINCE = value[5];
							  vCOUNTRY_ID 	 = value[6];
						if (argCOUNTRY_ID === vCOUNTRY_ID)
						{
								h = of_create_h_Element(1);
								h.setAttribute("id","hhhLOCATION_"+vLOCATION_ID);
								h.setAttribute("onclick","f_onClickLOCATION("+vLOCATION_ID+")");
								$(h).text(vCITY+": "+vSTREET_ADDRESS+" "+vPOSTAL_CODE+" "+vSTATE_PROVINCE);
								div = document.createElement("div");
								div.setAttribute("id","divLOCATION_"+vLOCATION_ID);
								$Container.append(h);
								$Container.append(div);	
						}
				});
				$Container.accordion({heightStyle: "content",collapsible: true, active: false});	
			 	//$Container.accordion("refresh");
	}
	
}	
//------------------------------------------------------------------------------
function f_onClickLOCATION(argLOCATION_ID){
	
	var $Container = $("#divLOCATION_"+argLOCATION_ID) ;
	var vIsAnyDataInContainer = $Container.text();
	
	if (vIsAnyDataInContainer.length === 0)
	{
				//$Container.empty();
				$.each(vParsedP_UI_DEPARTMENTS_s.DATA, function(key, value){
						vROWID = value[0];
						vDEPARTMENT_ID = value[1];
                        vDEPARTMENT_NAME = value[2];
                        vMANAGER_ID = value[3];
                        vLOCATION_ID = value[4];
                        
						if (argLOCATION_ID === vLOCATION_ID)
						{
								h = of_create_h_Element(1);
								h.setAttribute("id","hhhDEPARTMENT_"+vDEPARTMENT_ID);
								h.setAttribute("onclick","f_onClickDEPARTMENT("+vDEPARTMENT_ID+")");
								$(h).text(vDEPARTMENT_NAME);
								div = document.createElement("div");
								div.setAttribute("id","divDEPARTMENT_"+vDEPARTMENT_ID);
								$Container.append(h);
								$Container.append(div);	
						}
				});
				$Container.accordion({heightStyle: "content",collapsible: true, active: false});	
			 	//$Container.accordion("refresh");
	}
	
}
//------------------------------------------------------------------------------
function f_onClickDEPARTMENT(argDEPARTMENT_ID)
{
	var $Container = $("#divDEPARTMENT_"+argDEPARTMENT_ID) ;
	var vIsAnyDataInContainer = $Container.text();
	
	if (vIsAnyDataInContainer.length === 0)
	{
			//$Container.empty();
			$.each(vParsedP_UI_EMPLOYEES_s.DATA, function(key, value){	
				vROWID = value[0];
				vEMPLOYEE_ID = value[1];
				vFIRST_NAME = value[2];
				vLAST_NAME = value[3];
				vEMAIL = value[4];
				vPHONE_NUMBER = value[5];
				vHIRE_DATE = value[6];
				vJOB_ID = value[7];
				vSALARY = value[8];
				vCOMMISSION_PCT = value[9];
				vMANAGER_ID = value[10];
				vDEPARTMENT_ID = value[11];
				
				if (argDEPARTMENT_ID === vDEPARTMENT_ID)
				{
					h = of_create_h_Element(1);
					h.setAttribute("id","hhhEMPLOYEE_"+vEMPLOYEE_ID);
					h.setAttribute("onclick","f_onClickEMPLOYEE("+vEMPLOYEE_ID+")");
					$(h).text(vFIRST_NAME+" "+vLAST_NAME);
					div = document.createElement("div");
					div.setAttribute("id","divEMPLOYEE_"+vEMPLOYEE_ID);
					$Container.append(h);
					$Container.append(div);						
				}
			});	
			$Container.accordion({heightStyle: "content",collapsible: true, active: false});	
		 	//$Container.accordion("refresh");
	}
	
}
//------------------------------------------------------------------------------
function f_onClickEMPLOYEE(argEMPLOYEE_ID)
{
	
}
//------------------------------------------------------------------------------
</script>