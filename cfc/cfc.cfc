<cfcomponent hint="Collection of functions to call DB">
<!--- --------------------------------------------------------------------- --->
<!--- Procedures called:
"PKG_UI_DML.P_UI_MENU_DRIVER_s";
"PKG_UI_DML.P_UI_ELEMENT_DRIVER_s"; 
 --->
	<cffunction name="cfc_sqlWHERE_ORDER" access="remote" returntype="any" returnformat="plain" output="true" hint="">
		<cfargument name="PP_SQL_WHERE_TX" type="STRING" required="yes">
		<cfargument name="PP_SQL_ORDER_TX" type="STRING" required="yes">

<!--- TEST:
<cfif session.cfcPROC_NAME EQ "PKG_UI_DML.P_UI_ELEMENT_DRIVER_s">
	<cfdump var="#arguments.PP_SQL_WHERE_TX#" ><br>
	<cfdump var="#arguments.PP_SQL_ORDER_TX#" ><br>
	<cfabort >
</cfif>
--->
		<cfstoredproc procedure="#session.cfcPROC_NAME#" datasource="#application.dsn#" >
			<cfprocparam type="in" cfsqltype="cf_sql_varchar" value="#arguments.PP_SQL_WHERE_TX#">
			<cfprocparam type="in" cfsqltype="cf_sql_varchar" value="#arguments.PP_SQL_ORDER_TX#">
			
			
			<cfprocresult name="spr_sqlWHERE_ORDER" resultset="1">
		</cfstoredproc>

		<cfreturn spr_sqlWHERE_ORDER />
	</cffunction>
<!--- --------------------------------------------------------------------- --->	
</cfcomponent>
