<!---
<cfdump var="#URL.urlMENU_ID#" >
<cfdump var="#URL.urlMENU_TX#" >
<cfdump var="#URL.urlMENU_PAGE_NAME#" >
--->
<script >
//------------------------------------------------------------------------------
//var vInitBigPicture = 
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
	//vInitBigPicture.init();
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
				<cfinclude template="inc_big_picture.cfm" >			
			</div>
		</div>
	</div>
</div>

