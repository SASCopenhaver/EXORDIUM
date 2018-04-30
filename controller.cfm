<!---controller.cfm--->
<!--- TEST: --->
<!---<cfdump var="#URL.urlController#" abort="true" >--->
<!--- TEST. --->
<cfswitch expression="#URL.urlController#" >
	<!--- ----------------------------------- --->
	<cfcase value="authenticate" >
		<cfset variables.CallFile = #URL.urlController#&".cfm">
	</cfcase>
	<!--- ----------------------------------- --->
	
	<!--- ----------------------------------- --->
	<cfcase value="authorize" >
		<cfset variables.CallFile = #URL.urlController#&".cfm">
	</cfcase>
	<!--- ----------------------------------- --->
	<cfcase value="home" >
		<!---<cfset variables.CallFile = #application.path.home# & #URL.urlController# & ".cfm">--->
		<cfset variables.CallFile =#application.path.ui#&#URL.urlController#&".cfm">
	</cfcase>	
	<!--- ----------------------------------- --->
	<cfdefaultcase>
		<cfset variables.CallFile = "custom_error.cfm">
		<cfset session.Msg = "Unknown error.  Please re-start this application.">
	</cfdefaultcase>
	<!--- ----------------------------------  --->	
</cfswitch>

<cflocation url="#variables.CallFile#" addtoken="true" >