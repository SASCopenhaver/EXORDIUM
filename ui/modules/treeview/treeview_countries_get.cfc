<cfcomponent>
	<cffunction name="cfc_sqlWHERE_ORDER" access="remote" returntype="any" returnformat="plain" output="true" hint="">
		<!---<cfargument name="PP_SQL_WHERE_TX" type="STRING" required="yes">
		<cfargument name="PP_SQL_ORDER_TX" type="STRING" required="yes">--->

	<cfstoredproc procedure="PKG_UI_DML.P_UI_COUNTRIES_s" datasource="#application.dsn#" >
			<cfprocparam type="in" cfsqltype="cf_sql_varchar" value="WHERE 1=1 ">
			<cfprocparam type="in" cfsqltype="cf_sql_varchar" value="ORDER BY REGION_ID, COUNTRY_NAME ">
			
			
			<cfprocresult name="spr_sqlWHERE_ORDER" resultset="1">
		</cfstoredproc>

		<cfreturn spr_sqlWHERE_ORDER />
	</cffunction>
</cfcomponent>