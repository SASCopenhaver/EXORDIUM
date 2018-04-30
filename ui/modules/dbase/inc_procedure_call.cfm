
<style >
.coll{
	text-align: left; 
	font-family: Arial;
}	
</style>
<p class="cpppParagraph">
I would like to describe only one, the most widely used database process/functionality.<br>  
This example is applicable to Oracle.  Since only Oracle requires presence of the referential cursor, some adjustments are needed for another database.<br>
The reason it became the most commonly used is the way stored procedure is called.<br>
I am trying to follow a very strict and descriptive naming convention to avoid any guessing what procedure suppose to do.  Stored procedures are named in accordance with the table it is dealing with, although it is not always possible.<br>
Let's assume that records with menu items must be retrieved.<br>
Below is the code with the explanation followed:
</p>
<p class="cpppParagraph">
	<ol class="coll" start="Line 1">
		<li>cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_MENU_s"<br>
			<i>
				Declaring and assigning value to the session variable:<br> 
				&nbsp;&nbsp;&nbsp;&nbsp;UI - stands for User Interface,<br> 
				&nbsp;&nbsp;&nbsp;&nbsp;UI_MENU - is a table name,<br>
				&nbsp;&nbsp;&nbsp;&nbsp;"_s" stands for select, "_u" for update, "_d" for delete, "_i"" for insert
			</i>
		</li>
		<br>
		<li>cfset local.spr_P_UI_MENU_s = app.dot.objcfc.cfc_sqlWHERE_ORDER(<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PP_SQL_WHERE_TX: "WHERE ACTIVE_YN='Y' ",<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PP_SQL_ORDER_TX: "ORDER BY ORD_NR "<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
			<br>
			<i>
				Declaring and assigning value to the local variable:<br> 
				&nbsp;&nbsp;&nbsp;&nbsp;Argument PP_SQL_WHERE_TX is a "where" clause of the SQL statement,<br> 
				&nbsp;&nbsp;&nbsp;&nbsp;Argument PP_SQL_ORDER_TX is an "order by" clause of the SQL statement,<br>
				&nbsp;&nbsp;&nbsp;&nbsp;
			</i>
		</li>
		<br>
		<li>cfset local.sprSerializeJSON_P_UI_MENU_s = SerializeJSON("#local.spr_P_UI_MENU_s#")
			<br>
			<i>
				Return value is serialized.
			</i>
		</li>
		<br>
		<li>TEST: cfdump var="#local.sprSerializeJSON_P_UI_MENU_DRIVER_s#" abort="true"
			<br>
			<i>
				Test to see returned record set.
			</i>
		</li>
	</ol>
</p>
