<style >
.cpppWelcome{
	float:left; 
	font-family: Arial; 
	font-size: 1.5em;
	color:Navy; 
	text-align: left; 
}

</style>
<script >
	of_ShowHideMsg("show",
					"highlight",
					"Welcome, and thank you for your interest.", 
					4000);
//------------------------------------------------------------------------------
//var vInitWelcome =
var vInit =  
{
	init:	function()
	{
		this.initPageHeader();

	}
	,initPageHeader: function()
	{
		f_InitPageHeader("HOME");
	}
}
//------------------------------------------------------------------------------
$(function() {
	"use strict";
	//vInitWelcome.init();
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
				<p class="cpppWelcome">
					This web site does not represent any particular application or system. It supposed to be a reference.
				</p>
				<p class="cpppWelcome">
					Very recently I began designing this site with the intention to collect reusable functions and techniques that were developed and found from various sources over the time programming different functionalities.  That's why it is called "EXORDIUM" avoiding the word "cheat-sheet".  
				</p>
				<p class="cpppWelcome">
					On the local computer Oracle DB is used as a datasource, but here - JSON formated text.<br>
					For now, it is a static site, no real data manipulation is available yet.
				</p>
				<p class="cpppWelcome">
					Also, please keep in mind that I constantly apply some changes making attempt to improve or update existing functions and add something that I consider worthwhile.
				</p>
				<p class="cpppWelcome">
					This site is never ending development process. 
				</p>				
			</div>
		</div>
	</div>
</div>


