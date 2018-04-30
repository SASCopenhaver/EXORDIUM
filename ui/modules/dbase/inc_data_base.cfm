  <script>
  $( function() {
    $( "#accordion_database" ).accordion({
      	heightStyle: "content", 
		collapsible: true,
		active: false
    });
  } );
  </script>

 
<div id="accordion_database" style="text-align: left;">
  <h3>Procedure Call (from the ".cfm" file)</h3>
  <div>
    <p><cfinclude template="inc_procedure_call.cfm" ></p>
  </div>
  <h3>CFC component</h3>
  <div>
    <p><cfinclude template="inc_cfc_component.cfm" ></p>
  </div>
  <h3>Stored Procedure (stripped version)</h3>
  <div>
    <p><cfinclude template="inc_stored_procedure.cfm" ></p>
  </div>
</div>