<style >
.coll{
	text-align: left; 
	font-family: Arial;
}	
</style>
<p class="cpppParagraph">
	<p>
	Conceptually, this procedure receives 2 parameters, validate them and concatenate with the string that is SQL statement.<br>
	Execution of the built SQL is similar to the command "EXECUTE IMMEDIATE" - records fetched into the referential cursor, which<br>
	"delivers" records to the front-end with the following serialization, parsing and outputting on the screen.<br>
	Below is a simplified versionof the procedure:<br>                           
	</p>
PROCEDURE P_UI_MENU_DRIVER_s(<br>
&nbsp;&nbsp;PP_SQL_WHERE_TX IN VARCHAR2,<br> 
&nbsp;&nbsp;PP_SQL_ORDER_TX IN VARCHAR2,<br> 
&nbsp;&nbsp;PP_OUT_REFCURSOR OUT SYS_REFCURSOR,<br> 
&nbsp;&nbsp;PP_ERROR_OUT_REFCURSOR OUT SYS_REFCURSOR) AS<br>
BEGIN<br>
--1. <i>Build SQL "SELECT" string: </i><br>
  v_select_tx := 'SELECT  MENU_ID, MENU_TX, MENU_PAGE_NAME, ORD_NR, ACTIVE_YN<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM  UI_MENU<br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHERE  1=1 ';<br>
-- 2. <i>Validate "WHERE" caluse:</i><br>                  
  v_where_tx := PP_SQL_WHERE_TX;<br>
  ..............................<br>
-- 3. <i>Validate "ORDER BY" caluse:</i><br> 
  v_order_by_tx := PP_SQL_ORDER_TX;<br>
  ..............................<br>
-- 4. <i>Concatenate all variables</i><br>
  v_select_tx := v_select_tx||v_where_tx||' '||v_order_by_tx;<br>
-- 5. <i>Open cursor:</i><br>
OPEN PP_OUT_REFCURSOR FOR v_select_tx;<br>
<br>
  EXCEPTION<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHEN OTHERS THEN<br>
  ..............................<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OPEN PP_ERROR_OUT_REFCURSOR FOR<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SELECT v_sqlcode_nr AS sqlcode, v_sqlerrm_tx AS sqlerrm<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM dual;<br>
<br>
END P_UI_MENU_s;   
</p>                          