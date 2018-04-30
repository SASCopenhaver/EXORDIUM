<style >
.coll{
	text-align: left; 
	font-family: Arial;
}	
</style>
<p class="cpppParagraph">
Architectural pattern of the built prototype is Model-View-Controller (MVC).  Almost all components that create user interface (UI) are stored in the related tables in the database.<br>  
Table structure may be viewed under the tab “Database”.  
Several initial steps must be made to create this “homegrown” framework:
</p>
<ol class="coll" start="1">
	<li >
		File Stucture:<br>
		<cfoutput >
			<img height="258px" width="100px" src="#application.path.img#FileStructure.jpg" >
		</cfoutput>
	</li>
	<br>
	<li >
		In the file “Application.cfc” declare a variable of application scope to create an object, which points to the cfc file with the collection of functions responsible for data calls.  
		<p><i>Example:</i> app.dot.objcfc = CreateObject(application.dot.cfc & "cfc");</p>
	</li>
	<br>
	<li >
		Functions call database procedure and procedure returns a record set with elements that supposed to be positioned on the page where this call was made from.<br>
		After that record set is serialized and parsed within "script" tags.<br>
		Record set receives JSON format.  Iterating through this record set, certain function creates and outputs elements on the screen.<br>
			<p>
			<i>Example of the record set that builds main menu:</i>
			<p>
			'{"COLUMNS":["MENU_ID","MENU_TX","MENU_PAGE_NAME","ORD_NR","ACTIVE_YN"],<br>
			  &nbsp;&nbsp;"DATA":[<br>
			  &nbsp;&nbsp;&nbsp;&nbsp;[5,"HOME","modules/welcome/welcome.cfm",10,"Y"],<br>
			  &nbsp;&nbsp;&nbsp;&nbsp;[4,"RESUME","modules/resume/resume.cfm",20,"Y"],<br>
			  &nbsp;&nbsp;&nbsp;&nbsp;[25,"BIG PICTURE","modules/big_picture/big_picture.cfm",30,"Y"],<br>
			  &nbsp;&nbsp;&nbsp;&nbsp;[2,"FRONT END","modules/fe/front_end.cfm",40,"Y"],<br>
			  &nbsp;&nbsp;&nbsp;&nbsp;[1,"DATABASE","modules/dbase/data_base.cfm",50,"Y"],<br>
			  &nbsp;&nbsp;&nbsp;&nbsp;[3,"PAGE SAMPLE","modules/sample/page_sample.cfm",60,"Y"]<br>
			 &nbsp;&nbsp;]<br>
			}'
			</p>
			</p>
	</li>
</ol>
  