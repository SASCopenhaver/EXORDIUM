<style >
.coll{
	text-align: left; 
	font-family: Arial;
}	
</style>

<p class="cpppParagraph">
	<p>
		CFC component receives 3 variables:<br>
		&nbsp;&nbsp;session.cfcPROC_NAME <i>with the stored procedure name</i><br>
		&nbsp;&nbsp;PP_SQL_WHERE_TX <i>with the value for the "where" clause of the SQL statement</i><br>
		&nbsp;&nbsp;PP_SQL_ORDER_TX <i>with the value for the "order by" clause of the SQL statement</i><br>
		<br>
		
	</p>
	<p>
		<i>Below is the function that calls procedure in the package:</i>
		<br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;cfcomponent hint="Collection of functions to call DB"<br>
		<br>
			&nbsp;&nbsp;&nbsp;&nbsp;cffunction name="cfc_sqlWHERE_ORDER" access="remote" returntype="any" returnformat="plain" output="true" hint=""<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfargument name="PP_SQL_WHERE_TX" type="STRING" required="yes"<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfargument name="PP_SQL_ORDER_TX" type="STRING" required="yes"<br>
			<br>		
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfstoredproc procedure="#session.cfcPROC_NAME#" datasource="#application.dsn#" <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfprocparam type="in" cfsqltype="cf_sql_varchar" value="#arguments.PP_SQL_WHERE_TX#"<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfprocparam type="in" cfsqltype="cf_sql_varchar" value="#arguments.PP_SQL_ORDER_TX#"<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfprocresult name="spr_sqlWHERE_ORDER" resultset="1"<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/cfstoredproc<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cfreturn spr_sqlWHERE_ORDER /<br>
			<i>Record set is brought back to the part of the code where it was called from by the variable</i> spr_sqlWHERE_ORDER
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;/cffunction<br>
		<br>
		&nbsp;&nbsp;/cfcomponent<br>
	</p>
</p>
