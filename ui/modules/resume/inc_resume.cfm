 <style >
/*
.cpppResume{
	float:left; 
	font-family: Arial; 
	font-size: 1.5em;
	color:Navy; 
	text-align: left; 
}
*/
h3, h4, h5{
	text-align: left;
}

.cullAccSec{
	text-align: left;
}
</style>

<script>
  $( function() {
    $( "#divAccordionResume" ).accordion({
		heightStyle: "content", 
		collapsible: true,
		active: false 	
    });
  } );
</script>

<div id="divAccordionResume">
  <!--- ------------------------------------------------------------------- --->
  <h3>Summary of qualifications</h3>
  <div>
    	 <p class="cpppParagraph">Involved in full project lifecycle of several enterprise systems:</p>
		 <ul class="cullAccSec">
		 	<li >Requirements collection and analysis</li>
		 	<li >Liaison with customers</li>
		 	<li >Front and back-end technical design - MVC (application flow, GUI, data structure, reports)</li>
		 	<li >Data visualization</li>
		 	<li >Wrote and maintained documentation (manuals, test plans, reports)</li>
		 </ul>
		<p class="cpppParagraph">Software development was based on the processes complaint with mandatory requirements of CMMI Level 2-3.</p>
  </div>
  <!--- ------------------------------------------------------------------- --->
  <h3>Skills / Development Tools / Technologies</h3>
  <div>
	    <ul class="cullAccSec">
	    	<li>ColdFusion, CFC, JavaScript, jQuery, jQuery UI, CSS, WDDX, AJAX, XML, REST/JSON, CFML, SQL, PL/SQL;</li>
	    	<li>ColdFusion, Dreamweaver, ColdFusion Builder, Photoshop;</li>
	    	<li>Oracle, SQL Server, MySQL, SQL Developer, Toad;</li>
	    	<li>Amazon Web Services (AWS);</li>
	    	<li>Data Visualization: SAP BI (Web Intelligence), Tableau, D3.js;</li>
	    </ul>
  </div>
  <!--- ------------------------------------------------------------------- --->
  <h3>Professional Experience</h3>
  <div>
  		<h4>2015 - 2018 / InfoSoft Systems, Inc. – Washington DC. <i>Contract with Department of Defense</i></h4>
		<h5>Senior Member of Technical Staff</h5>
		<p class="cpppParagraph">Maintaining existing and developing new mission critical application related to NAVSEA contract.</p>
		<p class="cpppParagraph"><i>Maintenance:</i> Error analysis and correction in database, ColdFusion and JavaScript code.  Automated reporting processes using Oracle stored procedure. Performed routine procedures needed for application maintenance.</p>
		<p class="cpppParagraph"><i>New Development:</i> Created and implemented a framework (Single Page) for the new application development - this work included database and front-end design.  Began preparing application for moving to AWS.</p> 
	 	<p class="cpppParagraph"><i>Technology and Tools:</i> ColdFusion, CFC, JavaScript, jQuery, jQuery UI, CSS, AJAX, REST/MVC, Oracle (SQL/PL-SQL).<p>
 		
 		<br>

		<h4>2013 - 2015</h4>
		<h4>WebWorld  / Keymind – Washington D.C. <i> Contract with Department of Labor</i></h4>
		<h5>Senior Software Engineer</h5>
		<p class="cpppParagraph">Developed GUI and data modules for the existing financial system: data-entry, data processing and validation on client and server sides, and reporting.  Reports were presented in traditional table layouts and graphs for better data analysis. New modules were design based on data-driven multi-tier/MVC (model-view-controller) architectural pattern.</p>
		<p class="cpppParagraph"><i>Technology and Tools:</i>JavaScript, jQuery, CSS, AJAX, ColdFusion, Dreamweaver, Photoshop, Oracle, D3.js, Tableau, SAP Business Intelligence.</p>

		<br>
		
		<h4>2007 – 2013</h4>
		<h4>Serco, Inc. – Merrifield, VA.<i> Contract with US Postal Service</i></h4>
		<h5>Software Engineer</h5>
		<p class="cpppParagraph">Designed and implemented data migration tool.  Modified existing and designed new modules and reports with emphasis to ad-hoc behavior driven reporting.  Responsibilities included system analysis, design, application and database development, and maintenance.</p>
		<p class="cpppParagraph"><i>Technology and Tools: </i>JavaScript, CSS, AJAX, ColdFusion, Dreamweaver, Oracle, Oracle Report Builder.</p>
		
		<br>

		<h4>2001 – 2007</h4>
		<h4>CTC, Inc. – Washington D.C.<i> Contract with Department of State</i></h4>
		<h5>Lead Programmer Analyst</h5>
		<p class="cpppParagraph">Architected and delivered to production number of systems.  Systems vary in complexity, size, design approach and functionality. Data-driven multi-tier architecture was a foundation for system design.</p>
		<p class="cpppParagraph"><i>Technology and Tools: </i>JavaScript, CSS, WDDX, ColdFusion, Dreamweaver, PowerBuilder, SQL Server.</p>

		<br> 

		<h4>1997 – 1998</h4>
		<h4>Information System and Services, Inc.<i> Contract with NHTSA</i></h4>
		<h5>Programmer Analyst</h5>
		<p class="cpppParagraph">Designed and implemented client/server system for NHTSA personnel.</p>
		<p class="cpppParagraph"><i>Technology and Tools:</i> PowerBuilder, PowerBuilder class library, SQL Server, Oracle.</p>
  </div>
  <!--- ------------------------------------------------------------------- --->
  <h3>Certification</h3>
  <cfoutput >
  <div>
 	<ul class="cullAccSec">
 	<!---	
  		<li >CompTIA – Security+ 
  			<img src="#application.path.img#CompTIASecPlus.jpg" height="77px" width="100px" >
  		</li>
  	--->	
  		<li >CompTIA – Security+ 
  			<a download="CompTIASecPlus.pdf" href="#application.path.img#" target="_blank"  title="CompTIA Security Plus">
  				<img src="#application.path.img#CompTIASecPlus.jpg" height="77px" width="100px" >
  			</a>
  		</li> 		
  		<li >Adobe – ColdFusion
  			<a download="AdobeCertif.pdf" href="#application.path.img#" target="_blank" title="Adobe ColdFusion Certificate">
  				<img src="#application.path.img#AdobeCertif.jpg" >
  			</a>
  		</li>
  		<li>AWS – Associate Architect (in progress)</li>
  	</ul>
  </div>
  </cfoutput>
  <!--- ------------------------------------------------------------------- --->
  <h3>Education</h3>
  <div>
 	<ul class="cullAccSec">
  		<li >1979</li>
  		<li >Kiev Civil Engineering Institute, Kiev Ukraine</li>
  		<li >MS in Engineering</li>
  	</ul> 	
  </div>
  <!--- ------------------------------------------------------------------- --->
  <h3>Awards</h3>
  <div>
 	<ul class="cullAccSec">
  		<li >US Department of State</li>
  		<li >NAVSEA-Application Systems/ TWD & Associates</li>
  	</ul>
  </div>
  <!--- ------------------------------------------------------------------- --->
  <h3>Hobbies</h3>
  <div>
  	<ul class="cullAccSec">
  		<li >Travel</li>
  		<li >Photography</li>
  		<li >Krav Maga, Maui Thai, Kali</li>
  	</ul>
  </div>
  <!--- ------------------------------------------------------------------- --->
</div>




