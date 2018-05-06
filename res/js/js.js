/*
var v_ElementTxt,      //= document.createElement("input"),
	v_ElementSelOne,   //= document.createElement("select"), 
	v_ElementOption,   //= document.createElement("option"), 
	v_ElementOptGroup, //= document.createElement("optgroup")
	v_ElementCheckBox, //= document.createElement("input"),
	v_ElementTextarea, //= document.createElement("textarea");
	v_ElementButton,   //= document.createElement("input"),
	v_ElementSpinner,  //
	v_ElementDiv,	
	v_ElementFieldset, //= document.createElement("fieldset"),
	v_ElementLegend,   //= document.createElement("legend"),
	v_ElementLabel,	   //= document.createElement("label"),
	v_ElementInput,	   //= document.createElement("input"),
	v_ElementHidden,   //= document.createElement("hidden");
	vButtonCounter = 0;
*/
//------------------------------------------------------------------------------
function of_emptyContainer(argContainerID)
{
	
	$(argContainerID).empty();
}
//------------------------------------------------------------------------------
function of_buildElement(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, argELEMENT_LABEL, argELEMENT_TYPE, 
						 argELEMENT_CLASS, argORD_NR, argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	var vRtnElem = {};
	switch(argELEMENT_TYPE)
	{
		case "button":
			vRtnElem = of_buildButton(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									  argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									  argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);		
		break;
		//
		case "text":
			vRtnElem = of_buildText(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);	
		break;
		//
		case "select":
			vRtnElem = of_buildSelect(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);
		break;
		//		
		case "hidden":
			vRtnElem = of_buildHidden(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);
		break;
		//
		case "label":
			vRtnElem = of_buildLabel(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);
		break;
		case "checkbox":
			vRtnElem = of_buildCheckBox(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);		
		break;
//		//
		case "spinner":
			vRtnElem = of_buildSpinner(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);			
		
		break;
		//
		case "textarea":
			vRtnElem = of_buildTextarea(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
									argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
									argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP);			
		
		break;
//		//
		default:
			of_buildText(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
 					  argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
					  argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
	}
	return vRtnElem;
}
//------------------------------------------------------------------------------
function of_buildButton(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, argELEMENT_LABEL, argELEMENT_TYPE, 
						 argELEMENT_CLASS, argORD_NR, argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	var	eButton = document.createElement(argELEMENT_TYPE); //"button"
		eButton.id = argELEMENT_NAME+"_"+argROWID;
		eButton.setAttribute("class",argELEMENT_CLASS);
		eButton.setAttribute("tabindex",argORD_NR);
	var vElementLableTx = document.createTextNode(argELEMENT_LABEL);
		eButton.appendChild(vElementLableTx);
		
	return eButton;
}
//------------------------------------------------------------------------------
function of_buildText(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
 					  argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
					  argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{//alert(argELEMENT_CLASS)
	var eText = document.createElement("input");
		eText.type = argELEMENT_TYPE;
		eText.id = argELEMENT_NAME+"_"+argROWID;
		eText.name = argELEMENT_NAME+"_"+argROWID;
		eText.setAttribute("style","text-align:left");
		eText.setAttribute("size",argELEMENT_SIZE);
		eText.setAttribute("maxlength",argELEMENT_MAX_SIZE);
		if (argELEMENT_CLASS != null)
		{
			eText.setAttribute("class",argELEMENT_CLASS);	
		}
		
		
	return eText;
		
}
//------------------------------------------------------------------------------
function of_buildSelect(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
						argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
						argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	var eSelect = document.createElement(argELEMENT_TYPE);
	var eSelectID = argELEMENT_NAME+"_"+argROWID;
		eSelect.id = eSelectID;
		//eSelect.setAttribute("class",argELEMENT_CLASS_NAME);
		
		
	return eSelect; 
	
}
//// Building OPTIONS:
////$.each(vParsedSmallLists.DATA, function(s, option){
////	//vsROWID = option[0];
////	vsLIST_NAME = option[1]; 
////	vsVALUE_TX = option[2];
////	vsDESCR_TX = option[3];
////	//vsID = option[4];//vsORD_NR = option[5];//vsACTIVE_YN = option[6];//vsCREATE_TS = option[7];//vsCREATE_BY = option[8];//vsMOD_TS = option[9];//vsMOD_BY = option[10];
////	var vOption = document.createElement("option");
////		vOption.value = vsVALUE_TX;
////		vOption.text = vsDESCR_TX;
////		
////	if (vOption.value == vACTIVE_YN)
////	{
////		vOption.selected  = "true";
////	} 
////	veElem.appendChild(vOption);
////	
////})
//------------------------------------------------------------------------------
function of_buildHidden(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
						argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
						argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	var eHidden = document.createElement("input");
		eHidden.setAttribute("type",argELEMENT_TYPE);
		eHidden.id = argELEMENT_NAME+"_"+argROWID;
		//eHidden.value = argROWID;
	return eHidden;
}
//------------------------------------------------------------------------------
function of_buildSpinner(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
						argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
						argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	//alert(argELEMENT_SIZE)
	var eSpinner = document.createElement("input");
		eSpinner.id = argELEMENT_NAME+"_"+argROWID;
		eSpinner.name = argELEMENT_NAME+"_"+argROWID;
		if (argELEMENT_SIZE != null)
		{
			eSpinner.size = argELEMENT_SIZE;
		}
		
	return eSpinner;
}
//------------------------------------------------------------------------------
function of_buildTextarea(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
						argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
						argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	var eTextarea = document.createElement("textarea");
		eTextarea.id = argELEMENT_NAME+"_"+argROWID;
		eTextarea.name = argELEMENT_NAME+"_"+argROWID;
		
	return eTextarea;
}
//------------------------------------------------------------------------------
function of_buildLabel(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
						argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
						argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	
		var eLabel = document.createElement(argELEMENT_TYPE);
			eLabel.id = argELEMENT_NAME+"_"+argROWID;
			//eLabel.setAttribute("class",argELEMENT_CLASS);
			eLabel.for = argELEMENT_TOOLTIP;
			eLabel.innerHTML = argELEMENT_LABEL_TX;
		
	return eLabel;
}
//------------------------------------------------------------------------------
function of_buildCheckBox(argROWID, argELEMENT_ID, argMENU_ID, argPAGE_ID, argELEMENT_NAME, 
						argELEMENT_LABEL, argELEMENT_TYPE, argELEMENT_CLASS, argORD_NR, 
						argELEMENT_MANDATORY, argELEMENT_SIZE, argELEMENT_MAX_SIZE, argELEMENT_TOOLTIP)
{
	var eChekBox = document.createElement("input");
		eChekBox.setAttribute("type",argELEMENT_TYPE);
		//eChekBox.setAttribute("class",argELEMENT_CLASS_NAME);
		eChekBox.id = argELEMENT_NAME+"_"+argROWID;
		eChekBox.name = argELEMENT_NAME+"_"+argROWID;
		
	return eChekBox;
}

//------------------------------------------------------------------------------
function of_ShowHideMsg(argAction,	//"show" or "hide"
						argMsgType,	//"highlight" or"error"
						argMsgText, //Ex: "Record hasbeen updated" 
						argDelay	//Ex: 4000
						)
{
	var vdivMsgContainer = document.getElementById("divMsg"),
		vdivUiWidget  = document.createElement("div"),
		vdivMsgType	  = document.createElement("div"),
		vElemP    	  = document.createElement("p"),
		vElemSpan 	  = document.createElement("span");
		
	switch (argAction)
	{
		case "show":
			
			switch (argMsgType)
			{
				case"highlight":
					$(vElemSpan).addClass("ui-icon ui-icon-info")
								.css("float: left; margin-right: .3em;");
								
					$(vdivMsgType).addClass("ui-state-highlight ui-corner-all")
								  .css("margin-top: 20px; padding: 0 .7em;");					
				break;
				//
				case "error":
					$(vElemSpan).addClass("ui-icon ui-icon-alert")
								.css("float: left; margin-right: .3em;");
								
					$(vdivMsgType).addClass("ui-state-error ui-corner-all")
								  .css("margin-top: 20px; padding: 0 .7em;");					
				break;
			}
		break;
		//
		case "hide":
		break;
	}

		vElemP.appendChild(vElemSpan);
		vElemP.appendChild( document.createTextNode(argMsgText) );
		
		vdivMsgType.appendChild(vElemP);
		
		$(vdivUiWidget).addClass("ui-widget")
						.attr("id", "divUiWidget");//+argMenuID+"_"+argPageID);
		vdivUiWidget.appendChild(vdivMsgType);
		
		$(vdivMsgContainer).empty();
		vdivMsgContainer.appendChild(vdivUiWidget);
		$(vdivUiWidget).slideDown(800).delay(argDelay).slideUp(1000);	
}	
//------------------------------------------------------------------------------

function of_create_h_Element(argValue)
{// argValue is a number, represents asking h (heading) size:
// For custom "h" style reffer to: https://www.w3schools.com/tags/tag_hn.asp
	var vRtnH = {};
	vRtnH = document.createElement("h"+argValue);

//	if 		(argValue === 1 ){ vRtnH = document.createElement("h1")}
//    else if (argValue === 2 ){ vRtnH = document.createElement("h2")}
//    else if (argValue === 3 ){ vRtnH = document.createElement("h3")}
//    else if (argValue === 4 ){ vRtnH = document.createElement("h4")}
//    else if (argValue === 5 ){ vRtnH = document.createElement("h5")}
//    else if (argValue === 6 ){ vRtnH = document.createElement("h6")}
//    else					 { vRtnH = document.createElement("h6")}

	return vRtnH;
}
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function jsdump(arr,level) {
/**
compare this to alert(JSON.stringify( arr, null, 4));
Use this for diagnosing Javascript on a page.
pass it an array, such as
		alert( jsdump( aValidation ) );
It produces a text string to be used by alert().
* Function : dump()
* Arguments: The data - array,hash(associative array),object
*    The level - OPTIONAL
* Returns  : The textual representation of the array.
* This function was inspired by the print_r function of PHP.
* This will accept some data as the argument and return a
* text that will be a more readable version of the
* array/hash/object that is given.
	FROM: http://www.openjs.com/scripts/others/dump_function_php_print_r.php
*/

//alert('in jsdump');
//alert('typeof is ' + (typeof arr));
	var dumped_text = "";
	var item,value,j;
	//The padding given at the beginning of the line.
	var level_padding = "";

	if(!level) {level = 0;}

	for(j=0;j<level+1;j+=1) {
		level_padding += "     ";
	}

	if( (typeof arr) === 'object') {
		//Array/Hashes/Objects
		for(item in arr) {
			value = arr[item];

			if( (typeof value) === 'object') {
				//If it is an array,
				dumped_text += level_padding + '(' + j + ')' + "'" + item + "' (object) ...\n";
				// recursive call
				dumped_text += jsdump(value,level+1);
			} else {
				dumped_text += level_padding + "'" + item + "' value => \"" + value + "\"\n";
			}
		}
	} else {
		//Stings/Chars/Numbers etc.
		dumped_text = "===>"+arr+"<===("+ (typeof arr) +")";
	}
	return dumped_text;
} //jsdump
//------------------------------------------------------------------------------
function f_InitPageHeader(argHeaderTxt)
{
		var vdivSectionButtons = document.getElementById("divSectionButtons");
		
		var vPageHeaderContainer = document.getElementById("divPageHeader"),
			h3 = document.createElement("h3"),
			vHeaderTxt = document.createTextNode(argHeaderTxt);
		
		of_emptyContainer(vdivSectionButtons);
		
		$(h3).html(vHeaderTxt);
		vPageHeaderContainer.appendChild(h3);
}
//------------------------------------------------------------------------------