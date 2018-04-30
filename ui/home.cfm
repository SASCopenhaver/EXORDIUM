<!--- home.cfm --->
<!DOCTYPE html> <!--- HTML5 --->
<html lang="en">
<head>
<meta charset="utf-8" />
<cfoutput>
	<title>#application.name#</title>
	
		<script src="#application.path.jq_external#jquery.js"></script>
		<script src="#application.path.jq_ui_base#jquery-ui.min.js"></script>
		<link rel="stylesheet" href="#application.path.jq_ui_base#jquery-ui.min.css" />
		
		<link rel="stylesheet" type="text/css" href="#application.path.css#style.css" />
		<!---<link rel="stylesheet" href="../../css/style.css" ></link>--->
		
		<script language="javascript" src="#application.path.js#js.js"></script>
		<cfinclude template="#application.path.js#js.cfm" >
		
</cfoutput>

</head>
<body id="bdyApp">
<div class="divApp">
	<form id="frmPage" name="frmPage" method="post" >

		<center>	
			<header id="hdrApp">
				<cfinclude template="header.cfm" >
			</header>
			<nav >
				<cfinclude template="navigation.cfm" >
			</nav>
			<section id="secApp" style="background-color:#D7CEC7;" >
				<cfinclude template="section.cfm" >
			</section>
			<footer>
				<cfinclude template="footer.cfm" >
			</footer>
		
		</center>

	</form>
</div>
</body>
</html>
