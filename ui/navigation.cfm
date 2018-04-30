<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_MENU_DRIVER_s">
<cfset local.spr_P_UI_MENU_DRIVER_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "WHERE ACTIVE_YN='Y' ", 
																				PP_SQL_ORDER_TX: "ORDER BY ORD_NR ")>
<cfset local.sprSerializeJSON_P_UI_MENU_DRIVER_s = SerializeJSON("#local.spr_P_UI_MENU_DRIVER_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_MENU_DRIVER_s#" abort="true" >
--->

<cfset local.sprSerializeJSON_P_UI_MENU_DRIVER_s = '{"COLUMNS":["MENU_ID","MENU_TX","MENU_PAGE_NAME","ORD_NR","ACTIVE_YN"],"DATA":[[5,"HOME","modules/welcome/welcome.cfm",10,"Y"],[4,"RESUME","modules/resume/resume.cfm",20,"Y"],[25,"APPROACH","modules/big_picture/big_picture.cfm",30,"Y"],[2,"FRONT END","modules/fe/front_end.cfm",40,"Y"],[1,"DATABASE","modules/dbase/data_base.cfm",50,"Y"],[3,"PAGE SAMPLE","modules/sample/page_sample.cfm",60,"Y"]]}'>

<div id="divNav" ></div>

<script>
//------------------------------------------------------------------------------
var vParsedP_UI_MENU_DRIVER_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_MENU_DRIVER_s#</cfoutput>');
//TEST: alert(jsdump(vParsedP_UI_MENU_DRIVER_s))
//alert(JSON.stringify(vParsedP_UI_MENU_DRIVER_s, null, 4));
//------------------------------------------------------------------------------
var vdivNav = document.getElementById("divNav");
var tbl     = document.createElement("table"),
	tblHead = document.createElement("thead"), 
	tblBody = document.createElement("tbody"),
	tr,   //= document.createElement("tr"), 
	th,   //= document.createElement("th"),
	td,   //= document.createElement("td");
	button,
	span,
	cellTxt,
	tblFoot = document.createElement("tfoot");
var a, elem;
//------------------------------------------------------------------------------	
var vInitNav = 
{
	init:	function()
	{
		this.initNav();
		this.initNavStyle();
		this.initFirstPage();
	}
	,initNav:	function()
	{
		tr = document.createElement("tr");
		
		$.each(vParsedP_UI_MENU_DRIVER_s.DATA, function(key, value)
		{
			vMENU_ID = value[0];
			vMENU_TX = value[1];
			vMENU_PAGE_NAME = value[2];
			vORD_NR = value[3];
			vACTIVE_YN = value[4];
		
			td = document.createElement("td");
			cellTxt = document.createTextNode(vMENU_TX);
			
//			a = document.createElement("a");
//			a.id = "cbnNav_"+vMENU_ID;
//			a.setAttribute("class","ui-button ui-widget ui-corner-all");
//			a.href = "#";
//			a.appendChild(cellTxt);
//			td.appendChild(a);
			
			elem = of_buildElement(	vMENU_ID, //ROWID
									vMENU_ID, //ELEMENT_ID 
									vMENU_ID, //MENU_ID 
									vMENU_ID, //PAGE_ID 
									"cbnNav", //ELEMENT_NAME 
									vMENU_TX, //ELEMENT_LABEL 
									"button", //ELEMENT_TYPE 
									"ui-button ui-widget ui-corner-all", //ELEMENT_CLASS 
									vORD_NR,  //ORD_NR 
									"N",	  //ELEMENT_MANDATORY 
									"", 	  //ELEMENT_SIZE 
									"", 	  //ELEMENT_MAX_SIZE
									"Navigation Menu Item '"+vMENU_TX+"''" //ELEMENT_TOOLTIP
								 );
			//elem.setAttribute("onClick", "f_onClickNav('"+vMENU_PAGE_NAME+"')");
			elem.setAttribute("onClick", "f_onClickNav("+vMENU_ID+",'"+vMENU_TX+"','"+vMENU_PAGE_NAME+"')");
			
			td.appendChild(elem);
			tr.appendChild(td);
			
		});
		tblBody.appendChild(tr);
		
		tbl.appendChild(tblHead);
		tbl.appendChild(tblBody);
		tbl.appendChild(tblFoot);
		
		tbl.setAttribute("border", "0");
		
		vdivNav.appendChild(tbl);
		
	}
	,initNavStyle:	function(){
		$( ".widget input[type=submit], .widget a, .widget button" ).button();
    	$( "button, input, a" ).click( function( event ) {
      		event.preventDefault();
    	});
	}
	,initFirstPage: function(){
		//
		$.each(vParsedP_UI_MENU_DRIVER_s.DATA, function(key, value)
		{
			if (key === 0)
			{
				vMENU_ID = value[0];
				vMENU_TX = value[1];
				vMENU_PAGE_NAME = value[2];
				vORD_NR = value[3];
				vACTIVE_YN = value[4];
				
				f_onClickNav(vMENU_ID,vMENU_TX,vMENU_PAGE_NAME)// in this case,it is "modules/welcome/welcome.cfm"
				return false;
			}
		});
	}
	
}
//------------------------------------------------------------------------------
$(function() {
	"use strict";
	vInitNav.init();

});
//------------------------------------------------------------------------------
function f_onClickNav(argMENU_ID, argMENU_TX, argMENU_PAGE_NAME)
{// TEST: alert(argMENU_ID+"  "+argMENU_TX+"  "+argMENU_PAGE_NAME+"\n"+argMENU_PAGE_NAME+"?urlMENU_ID="+argMENU_ID+"&urlMENU_TX='"+argMENU_TX+"'&urlMENU_PAGE_NAME='"+argMENU_PAGE_NAME+"'");
	
	var vMENU_TX = argMENU_TX.trim().replace(/ /g, '%20');
	
	$("#divArticle").load(argMENU_PAGE_NAME+"?urlMENU_ID="+argMENU_ID+"&urlMENU_TX="+vMENU_TX+"&urlMENU_PAGE_NAME='"+argMENU_PAGE_NAME+"'");
	
}
//------------------------------------------------------------------------------
</script>
