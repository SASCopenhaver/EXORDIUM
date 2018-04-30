<!---
<cfdump var="#URL.urlMENU_ID#" >
<cfdump var="#URL.urlMENU_TX#" >
<cfdump var="#URL.urlMENU_PAGE_NAME#" >
--->
<script >
//------------------------------------------------------------------------------
var vInit = 
{
	init:	function()
	{
		this.initPageHeader();
	}
	,initPageHeader: function()
	{
		var vPageHeader = "<cfoutput>#URL.urlMENU_TX#</cfoutput>"
		f_InitPageHeader(vPageHeader);
	}
}
//------------------------------------------------------------------------------
$(function() {
	"use strict";
	vInit.init();
});
//------------------------------------------------------------------------------
</script>
<div class="divTable">
	<div class="divTableBody">
		<div class="divTableRow">
			<div id=divTableCellHeader class="divTableCell">
				<div id="divPageHeader" class="cdivPageHeader"></div>
			</div>
		</div>
		<div class="divTableRow">
			<div class="divTableCell">
				<cfinclude template="inc_page_sample.cfm" >			
<div align="left" style="font-family:Arial">
<p class="cpppParagraph">
	<h4>Notes:</h4>
	<ul>
		<li>In the "text" field MENU ITEM a jQuery class applied</li>
		<li>In the "text" field PAGE property 'class' is <i>null</i></li>
		<li>ORDER NUMBER is presented as a widget <i>spinner</i></li>
		<li>ACTIVE is presented as a widget <i>selectmenu</i> with the changed property 'width'</li>
		<li>Although, FRONT END record is active, but for the presentation purpose it is changed to No.</li>
		<li>Delete functionality is not finishet yet</li>
		<li>To avoid page reloading any database calls will be done by utilyzing <i>AJAX</i></li>
	</ul>
		
</p>
</div>


			
			</div>
		</div>
	</div>
</div>

