
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_COUNTRIES_s">
<cfset local.spr_P_UI_COUNTRIES_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "' '", 
																			  PP_SQL_ORDER_TX: "' '")>
<!---<cfset local.sprSerializeJSON_P_UI_COUNTRIES_s = SerializeJSON("#local.spr_P_UI_COUNTRIES_s#")>--->

<!---<cfdump var="#local.sprSerializeJSON_P_UI_COUNTRIES_s#" abort="true" >--->


<cfset local.spr_P_UI_COUNTRIES_s = '{"COLUMNS":["ROWID","MENU_ID","MENU_TX","MENU_PAGE_NAME","ORD_NR","ACTIVE_YN"],"DATA":[["AAAYWCAAOAAAAC8AAB",15,"HOME","modules/welcome/welcome.cfm",10,"Y"],["AAAYWCAAOAAAAC9AAD",4,"RESUME","modules/resume/resume.cfm",20,"Y"],["AAAYWCAAOAAAAC8AAA",25,"APPROACH","modules/big_picture/big_picture.cfm",30,"Y"],["AAAYWCAAOAAAAC9AAC",2,"FFRONT END","modules/fe/front_end.cfm",40,"Y"],["AAAYWCAAOAAAAC9AAB",1,"DATABASE","modules/dbase/data_base.cfm",50,"Y"],["AAAYWCAAOAAAAC9AAA",3,"DATA ENTRY","modules/sample/page_sample.cfm",60,"Y"],["AAAYWCAAOAAAAC9AAE",45,"EARTHQUAKE REPORT","modules/earthquake/earthquake.cfm",70,"Y"]]}'>
<cfoutput>#local.spr_P_UI_COUNTRIES_s#</cfoutput>
