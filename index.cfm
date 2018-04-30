<!--- Please insert your code here --->
<!--- TEST: --->
<!---
Applicationvariables:<br>
Path:
<br><cfdump var="application.urlstart  = #application.urlstart#">
<br><cfdump var="application.httphost  = #application.httphost#" >
<br><cfdump var="application.path.root = #application.path.root#" >
<br><cfdump var="application.path.cfc  = #application.path.cfc#" >
<br><cfdump var="application.path.css  = #application.path.css#">
<br><cfdump var="application.path.db   = #application.path.db#">
<br><cfdump var="application.path.doc  = #application.path.doc#">
<br><cfdump var="application.path.img  = #application.path.img#">
<br><cfdump var="application.path.res  = #application.path.res#">
<br><cfdump var="application.path.ui   = #application.path.ui#">
<br>
<br><cfdump var="application.path.home   = #application.path.home#">
<br><cfdump var="application.path.modules   = #application.path.modules#">
<br>
<br><cfdump var="application.path.jq   = #application.path.jq#">
<br><cfdump var="application.path.jq_ui_base = #application.path.jq_ui_base#">
<br><cfdump var="application.path.jq_external = #application.path.jq_external#">
<br><br>
Dot notation:
<br><cfdump var="application.dot.root = #application.dot.root#">
<br><cfdump var="application.dot.cfc = #application.dot.cfc#" >
<cfabort >
--->
<!--- TEST. --->


<cflocation url="controller.cfm?urlController=authenticate" addtoken="true" >