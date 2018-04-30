<!--- 
header.cfm
see style in "style.css"
---> 
<cfoutput>
<!---<div id="divHeaderImg"><img id="imgHeader" src="#application.path.img#framework2.jpg" ></div>--->
<div id="divHeaderImg"><img id="imgHeader" src="#application.path.img#exordium.jpg" ></div>
<div><img  id="imgHeader" src=""> </div>
<div id="divHeaderAppName">_#application.name#_</div>
<div id="divHeaderSalutation">Hello, #session.vUserFullName#</div>
</cfoutput>