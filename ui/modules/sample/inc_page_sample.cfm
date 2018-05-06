<!---
<cfdump var="#URL.urlMENU_ID#" >
<cfdump var="#URL.urlMENU_TX#" >
<cfdump var="#URL.urlMENU_PAGE_NAME#" >
--->

<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_MENU_DRIVER_s">
<cfset local.spr_P_UI_MENU_DRIVER_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "WHERE ACTIVE_YN='Y' ", 
																				PP_SQL_ORDER_TX: "ORDER BY ORD_NR ")>
<cfset local.sprSerializeJSON_P_UI_MENU_DRIVER_s = SerializeJSON("#local.spr_P_UI_MENU_DRIVER_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_MENU_DRIVER_s#" abort="true" >
--->
<cfset local.sprSerializeJSON_P_UI_MENU_DRIVER_s = '{"COLUMNS":["ROWID","MENU_ID","MENU_TX","MENU_PAGE_NAME","ORD_NR","ACTIVE_YN"],"DATA":[["AAAYWCAAOAAAAC8AAB",15,"HOME","modules/welcome/welcome.cfm",10,"Y"],["AAAYWCAAOAAAAC9AAD",4,"RESUME","modules/resume/resume.cfm",20,"Y"],["AAAYWCAAOAAAAC8AAA",25,"APPROACH","modules/big_picture/big_picture.cfm",30,"Y"],["AAAYWCAAOAAAAC9AAC",2,"FFRONT END","modules/fe/front_end.cfm",40,"Y"],["AAAYWCAAOAAAAC9AAB",1,"DATABASE","modules/dbase/data_base.cfm",50,"Y"],["AAAYWCAAOAAAAC9AAA",3,"DATA ENTRY","modules/sample/page_sample.cfm",60,"Y"],["AAAYWCAAOAAAAC9AAE",45,"EARTHQUAKE REPORT","modules/earthquake/earthquake.cfm",70,"Y"],["AAAYWCAAOAAAAC7AAA",46,"TREEVIEW","modules/treeview/treeview.cfm",80,"Y"]]}'>


<!---
<cfset session.cfcPROC_NAME = "PKG_UI_DML.P_UI_ELEMENT_DRIVER_s">
<cfset local.spr_P_UI_ELEMENT_DRIVER_s = application.dot.objcfc.cfc_sqlWHERE_ORDER(PP_SQL_WHERE_TX: "WHERE MENU_ID=#URL.urlMENU_ID# AND PAGE_ID=21 ", 
																		PP_SQL_ORDER_TX: "ORDER BY ORD_NR ")>
<cfset local.sprSerializeJSON_P_UI_ELEMENT_DRIVER_s = SerializeJSON("#local.spr_P_UI_ELEMENT_DRIVER_s#")>
<cfdump var="#local.sprSerializeJSON_P_UI_ELEMENT_DRIVER_s#" abort="false" >
--->
<cfset local.sprSerializeJSON_P_UI_ELEMENT_DRIVER_s = '{"COLUMNS":["ROWID","ELEMENT_ID","MENU_ID","PAGE_ID","ELEMENT_NAME","ELEMENT_LABEL","ELEMENT_TYPE","ELEMENT_CLASS","ORD_NR","ELEMENT_MANDATORY","ELEMENT_SIZE","ELEMENT_MAX_SIZE","ELEMENT_TOOLTIP"],"DATA":[["AAAYZHAAOAAAADkAAA",21,3,21,"hdnROWID",null,"hidden",null,10,"Y",null,null,null],["AAAYZHAAOAAAADkAAB",22,3,21,"hdnMENU_ID",null,"hidden",null,20,"Y",null,null,null],["AAAYZHAAOAAAADkAAC",23,3,21,"txtMENU_TX","MENU ITEM","text","ui-button ui-widget ui-corner-all",30,"Y",20,20,"This is a menu item, make it short"],["AAAYZHAAOAAAADkAAD",24,3,21,"txtMENU_PAGE_NAME","PAGE","text",null,40,"Y",50,100,null],["AAAYZHAAOAAAADkAAE",25,3,21,"spnORD_NR","ORDER NUMBER","spinner",null,50,"Y",5,null,null],["AAAYZHAAOAAAADkAAF",26,3,21,"selACTIVE_YN","ACTIVE","select",null,60,"Y",null,null,null],["AAAYZHAAOAAAADkAAG",27,3,21,"cbnRESET","Reset","button","ui-button ui-widget ui-corner-all",70,"Y",null,null,null],["AAAYZHAAOAAAADkAAH",28,3,21,"cbnNEW","New","button","ui-button ui-widget ui-corner-all",80,"Y",null,null,null],["AAAYZHAAOAAAADkAAI",29,3,21,"cbnSAVE","Save","button","ui-button ui-widget ui-corner-all",90,"Y",null,null,null]]}'>

<div id="divPageSample" ></div>

<script>
//------------------------------------------------------------------------------
var vParsedP_UI_ELEMENT_DRIVER_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_ELEMENT_DRIVER_s#</cfoutput>');
//TEST: alert(jsdump(vParsedP_UI_ELEMENT_DRIVER_s))
//alert(JSON.stringify(vParsedP_UI_ELEMENT_DRIVER_s, null, 4));
//------------------------------------------------------------------------------
var vParsedP_UI_MENU_DRIVER_s = $.parseJSON('<cfoutput>#local.sprSerializeJSON_P_UI_MENU_DRIVER_s#</cfoutput>');
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
var vdivPageSample = document.getElementById("divPageSample"),
	vdivSectionButtons = document.getElementById("divSectionButtons");
var tbl     = document.createElement("table"),
	tblHead = document.createElement("thead"), 
	tblBody = document.createElement("tbody"),
	tr,   //= document.createElement("tr"), 
	th,   //= document.createElement("th"),
	td,   //= document.createElement("td");
	button,
	span,
	cellTxt, //= document.createTextNode("") 
	tblFoot = document.createElement("tfoot");
var a, elem, elemOption;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
var vInitIncPageSample = 
{
	init:	function()
	{
		this.initOutputCommandButtons();
		this.initOutputRecordsHeader();
		this.initOutputRecordsBody();
		this.initOutputRecordsFooter();
		this.initStyle();
		this.initHideNewRecord();
		this.initPreventDefault();
		
	}
// COMMAND BUTTONS -------------------------------------------------------------
	,initOutputCommandButtons: function()
	{
		tr = document.createElement("tr");
		$.each(vParsedP_UI_ELEMENT_DRIVER_s.DATA, function(key, value)
		{
				vROWID = value[0], 
				vELEMENT_ID = value[1],
				vMENU_ID = value[2],
				vPAGE_ID = value[3],
				vELEMENT_NAME = value[4],
				vELEMENT_LABEL = value[5],
				vELEMENT_TYPE = value[6],
				vELEMENT_CLASS = value[7],
				vORD_NR = value[8],
				vELEMENT_MANDATORY = value[9],
				vELEMENT_SIZE = value[10],
				vELEMENT_MAX_SIZE = value[11],
				vELEMENT_TOOLTIP = value[12]
				
				if (vELEMENT_TYPE === 'button')
				{
					td = document.createElement("td");
					elem = of_buildElement(	vROWID,
											vELEMENT_ID ,
											vMENU_ID, 
											vPAGE_ID, 
											vELEMENT_NAME, 
											vELEMENT_LABEL, 
											vELEMENT_TYPE, 
											vELEMENT_CLASS, 
											vORD_NR,  
											vELEMENT_MANDATORY ,
											vELEMENT_SIZE, 
											vELEMENT_MAX_SIZE,
											vELEMENT_TOOLTIP
								 		);
					$(elem).css("background-color", "#dfeffc");
					elem.setAttribute("onClick", "f_onClickCBN_PageSample('"+vELEMENT_NAME+"')");
					td.appendChild(elem);
					tr.appendChild(td);
				}
				tblBody.appendChild(tr);
				tbl.appendChild(tblBody);
				vdivSectionButtons.appendChild(tbl);
		});
	}
// TABLE HEADER:----------------------------------------------------------------
	,initOutputRecordsHeader: function()
	{
		tbl = document.createElement("table");
		tbl.setAttribute("class","blueTable");
		
		tblHead = document.createElement("thead"); 
		//
		tr = document.createElement("tr");
		$.each(vParsedP_UI_ELEMENT_DRIVER_s.DATA, function(key, value)
		{
				vROWID = value[0], 
				vELEMENT_ID = value[1],
				vMENU_ID = value[2],
				vPAGE_ID = value[3],
				vELEMENT_NAME = value[4],
				vELEMENT_LABEL = value[5],
				vELEMENT_TYPE = value[6],
				vELEMENT_CLASS = value[7],
				vORD_NR = value[8],
				vELEMENT_MANDATORY = value[9],
				vELEMENT_SIZE = value[10],
				vELEMENT_MAX_SIZE = value[11],
				vELEMENT_TOOLTIP = value[12]
				
				if (vELEMENT_TYPE != 'button' && vELEMENT_TYPE != 'hidden')
				{
					th = document.createElement("th");
					
					if (vELEMENT_LABEL === "MENU ITEM"|| vELEMENT_LABEL === "PAGE")
					{
						span = document.createElement("span");
						span.setAttribute("style","color:red; font-size:20px;");
						var vMand = document.createTextNode(" *");
						span.appendChild(vMand);
						cellTxt = document.createTextNode(vELEMENT_LABEL);
						th.appendChild(cellTxt);
						th.appendChild(span);
					}
					else{
						cellTxt = document.createTextNode(vELEMENT_LABEL);
						th.appendChild(cellTxt);
					}
					
					//th.appendChild(cellTxt);
					tr.appendChild(th);
				}
				tblHead.appendChild(tr);
				tbl.appendChild(tblHead);
				//vdivPageSample.appendChild(tbl);
		});		
	}
// TABLE BODY with RECORDS: ----------------------------------------------------
	,initOutputRecordsBody: function()
	{
		tblBody = document.createElement("tbody");
		
// NEW record:
		tr = document.createElement("tr");
		tr.id = "trrNewRecord";
		//
		td = document.createElement("td");
		elem = of_buildElement(	0, //vROWID,
								0, //vELEMENT_ID ,
								3, //vMENU_ID, 
								21, //vPAGE_ID, 
								"txtMENU_TX", //vELEMENT_NAME, 
								"MENU ITEM", //vELEMENT_LABEL, 
								"text", //vELEMENT_TYPE, 
								"ui-button ui-widget ui-corner-all", //vELEMENT_CLASS, 
								70, //vORD_NR,  
								"Y", //vELEMENT_MANDATORY ,
								20, //vELEMENT_SIZE, 
								20,//vELEMENT_MAX_SIZE,
								"" //vELEMENT_TOOLTIP
					 		);
		td.appendChild(elem);
		tr.appendChild(td);
		//
		td = document.createElement("td");
		elem = of_buildElement(	0, //vROWID,
								0, //vELEMENT_ID ,
								3, //vMENU_ID, 
								21, //vPAGE_ID, 
								"txtMENU_PAGE_NAME", //vELEMENT_NAME, 
								"PAGE", //vELEMENT_LABEL, 
								"text", //vELEMENT_TYPE, 
								"ui-button ui-widget ui-corner-all", //vELEMENT_CLASS, 
								70, //vORD_NR,  
								"Y", //vELEMENT_MANDATORY ,
								46, //vELEMENT_SIZE, 
								100,//vELEMENT_MAX_SIZE,
								"" //vELEMENT_TOOLTIP
					 		);
		td.appendChild(elem);
		tr.appendChild(td);		
		//
		td = document.createElement("td");
		elem = of_buildElement(	0, //vROWID,
								0, //vELEMENT_ID ,
								3, //vMENU_ID, 
								21, //vPAGE_ID, 
								"spnORD_NR", //vELEMENT_NAME, 
								"ORDER NUMBER", //vELEMENT_LABEL, 
								"spinner", //vELEMENT_TYPE, 
								"null", //vELEMENT_CLASS, 
								70, //vORD_NR,  
								"Y", //vELEMENT_MANDATORY ,
								5, //vELEMENT_SIZE, 
								"null",//vELEMENT_MAX_SIZE,
								"" //vELEMENT_TOOLTIP
					 		);
		td.appendChild(elem);
		tr.appendChild(td);			
		//
		td = document.createElement("td");
		elem = of_buildElement(	0, //vROWID,
								0, //vELEMENT_ID ,
								3, //vMENU_ID, 
								21, //vPAGE_ID, 
								"selACTIVE_YN", //vELEMENT_NAME, 
								"ACTIVE", //vELEMENT_LABEL, 
								"select", //vELEMENT_TYPE, 
								"null", //vELEMENT_CLASS, 
								70, //vORD_NR,  
								"Y", //vELEMENT_MANDATORY ,
								"", //vELEMENT_SIZE, 
								"",//vELEMENT_MAX_SIZE,
								"" //vELEMENT_TOOLTIP
					 		);
					 		
		elemOption = document.createElement("option");
		elemOption.value = "Y";
		elemOption.text = "Yes";
		elem.appendChild(elemOption);
		//
		elemOption = document.createElement("option");
		elemOption.value = "N";
		elemOption.text = "No";
		elem.appendChild(elemOption);
					 		
					 		
		td.appendChild(elem);
		tr.appendChild(td);			
		//
		tblBody.appendChild(tr);
		
		
		
// EXISTING records:			
		$.each(vParsedP_UI_MENU_DRIVER_s.DATA, function(key, value){
			
			vRecordROWID = value[0];
			vRecordMENU_ID = value[1];
	        vRecordMENU_TX = value[2];
	        vRecordMENU_PAGE_NAME = value[3];
	        vRecordORD_NR = value[4];
	        vRecordACTIVE_YN = value[5];
			
			tr = document.createElement("tr");
			
			$.each(vParsedP_UI_ELEMENT_DRIVER_s.DATA, function(key, value)
			{
					//vROWID = value[0], 
					vROWID = vRecordROWID,
					vELEMENT_ID = value[1],
					vMENU_ID = value[2],
					vPAGE_ID = value[3],
					vELEMENT_NAME = value[4],
					vELEMENT_LABEL = value[5],
					vELEMENT_TYPE = value[6],
					vELEMENT_CLASS = value[7],
					vORD_NR = value[8],
					vELEMENT_MANDATORY = value[9],
					vELEMENT_SIZE = value[10],
					vELEMENT_MAX_SIZE = value[11],
					vELEMENT_TOOLTIP = value[12]
					//
					if (vELEMENT_TYPE != "button" && vELEMENT_TYPE != 'hidden')
					{
						td = document.createElement("td");
						elem = of_buildElement(	vROWID,
												vELEMENT_ID ,
												vMENU_ID, 
												vPAGE_ID, 
												vELEMENT_NAME, 
												vELEMENT_LABEL, 
												vELEMENT_TYPE, 
												vELEMENT_CLASS, 
												vORD_NR,  
												vELEMENT_MANDATORY ,
												vELEMENT_SIZE, 
												vELEMENT_MAX_SIZE,
												vELEMENT_TOOLTIP
									 		);
						if (vELEMENT_NAME === "txtMENU_TX")
						{ 
							elem.value =vRecordMENU_TX;
						}
						if (vELEMENT_NAME === "txtMENU_PAGE_NAME")
						{ 
							elem.value =vRecordMENU_PAGE_NAME;
						}
						if (vELEMENT_NAME === "selACTIVE_YN")
						{ 
							elemOption = document.createElement("option");
							elemOption.value = "Y";
							elemOption.text = "Yes";
							elem.appendChild(elemOption);
							//
							elemOption = document.createElement("option");
							elemOption.value = "N";
							elemOption.text = "No";
							elem.appendChild(elemOption);
							//
							if (vRecordACTIVE_YN === "N")
							{
								elemOption.selected = "true";
							}
						}
						if (vELEMENT_NAME === "spnORD_NR")
						{
							elem.value = vRecordORD_NR;
						}
						
						td.appendChild(elem);
						//------------------------------------------------------
// Adding Mandatory symbol:
//						if (vELEMENT_MANDATORY === "Y")
//						{
//							td.appendChild(document.createTextNode(vELEMENT_MANDATORY));
//						} 
					
						//------------------------------------------------------
						
						tr.appendChild(td);
					}
					tblBody.appendChild(tr);
					
					
			});
		});
		
		tbl.appendChild(tblBody);
		//vdivPageSample.appendChild(tbl);
	}
// TABLE FOOTER:
	,initOutputRecordsFooter: function(){
		tr = document.createElement("tr");
		td = document.createElement("td");
		td.setAttribute("colspan","4");
		//cellTxt = document.createTextNode("xyz");
		//td.appendChild(cellTxt);
		tr.appendChild(td);
		tblFoot.appendChild(tr);
		tbl.appendChild(tblFoot);
		vdivPageSample.appendChild(tbl);
		
	}
	,initStyle: function(){
		$("input[id^='spn']").spinner({min: 10, max: 100, step: 10});
		$('select[id^="sel"]').selectmenu({width: 80});
	}
	,initHideNewRecord: function(){
		$("#trrNewRecord").hide();
	}
	,initPreventDefault: function(){
		$( ".widget input[type=submit], .widget a, .widget button" ).button();
    	$( "button, input, a" ).click( function( event ) {
      		event.preventDefault();
    	});
	}
}
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
$(function() {
	"use strict";
	vInitIncPageSample.init();

});
//------------------------------------------------------------------------------
function f_onClickCBN_PageSample(argCBName)
{
	switch(argCBName)
	{
		case "cbnRESET":
			$("#trrNewRecord").hide();
			of_ShowHideMsg("show","highlight","Page has been reset.",4000);
			f_onClickNav(3,'PAGE SAMPLE','modules/sample/page_sample.cfm');
			
		break;
		//
		case "cbnNEW":
			$("#trrNewRecord").show();
			of_ShowHideMsg("show","highlight","Please fill out all mandatory fields for the new record.",4000);
		break;
		//
		case "cbnSAVE":
			var vValidationPassed = "YES";
			var aryMandFields = ["txtMENU_TX", "txtMENU_PAGE_NAME"]
			var vMandField;
			var vIsNewRowVisible = $("#trrNewRecord").is(':visible');// true / false
			//
			if (vIsNewRowVisible)//true
			{
				$.each(aryMandFields, function(key, value){
					vMandField = value;//alert(vMandField)
					$("[id^="+vMandField+"]").each(function(i, obj){
						var vElemID = this.id;
						var vElemVal = $("#"+vElemID).val();
						var vElemLength = vElemVal.length;//alert(vElemID+" |"+vElemVal+"| "+vElemLength)

						if( vElemLength == 0)
					 	{
							vValidationPassed = "NO";
							$("#"+vElemID).focus();
							of_ShowHideMsg("show","error","System cannot procedd your request. All mandatory field(s) must have values.",3000);
						}
						else
						{
							vValidationPassed = "YES";
							of_ShowHideMsg("show","highlight","Record has been saved or updated.",3000);
						}
						if (vValidationPassed == "NO"){ return false; }
					});
					if (vValidationPassed == "NO"){ return false; }
				});
			}
			else //false
			{
				$.each(aryMandFields, function(key, value){
					vMandField = value; //alert(vMandField)
					$("[id^="+vMandField+"]").each(function(i, obj){
						var vElemID = this.id;
						var vElemVal = $("#"+vElemID).val();
						var vElemLength = vElemVal.length;// alert(vElemID+" |"+vElemVal+"| "+vElemLength)	
						if (vElemID != "txtMENU_TX_0" && vElemID != "txtMENU_PAGE_NAME_0")
						{
							if( vElemLength == 0)
						 	{
								vValidationPassed = "NO";
								$("#"+vElemID).focus();
								of_ShowHideMsg("show","error","System cannot procedd your request. All mandatory field(s) must have values.",3000);
							}
							else
							{
								vValidationPassed = "YES";
								of_ShowHideMsg("show","highlight","Record has been saved or updated.",3000);
							}
						}
						if (vValidationPassed == "NO"){ return false; }				
					});
					if (vValidationPassed == "NO"){ return false; }	
				});				
			}
		break;
		//
	}
}
//------------------------------------------------------------------------------
</script>
