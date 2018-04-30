
<style >
.coll{
	text-align: left; 
	font-family: Arial;
}	
</style>


<p class="cpppParagraph">
	Front-end elements are built by utilizing JavaScript and jQuery coding.  Conceptually, the following happens:	
</p>

<ol class="coll" start="1">
	<li >ColdFusion calls cfc function that brings a record set.</li>
	<br>
	<li >ColdFusion serializes this record set.</li>
	<br>
	<li >Within “scrip” tags using “$.parseJSON()” function, records become JSON formatted.</li>
	<br>
	<li >Iterating through the JSON, a function that builds and positions element on the screen is called.
			<p>	
					<i>Simplified Example:</i>
					<p>
							$.each(vParsedDatum.DATA, function(key, value)<br>
							{<br>
							&nbsp;&nbsp;vElem = of_buildElement<br>(<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_ID = value[0],<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_NAME = value[1], <br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_LABEL = value[2],<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_TYPE = value[3],<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_CLASS = value[4],<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vORD_NR = value[5],<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_MANDATORY = value[6],<br> 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_SIZE = value[7],<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vELEMENT_TOOLTIP = value[8];
							<br>)<br>
					<br>
							&nbsp;&nbsp;f_positionElement(vElement);<br>	
					
						});
					</p>
			</p>	
	</li>
	<br>
	<li >
		There is a switch statement inside function “of_buildElement”.  Based on the value of the argument (vELEMENT_TYPE), another function is called within that switch.<br>
		It is either of_buildText() for text fields, or of_buildButton() for command buttons, etc.
	</li>
	<br>
	<li >Return value in vElem is an object with already assigned properties.</li>
	<br>
	<li >Function f_positionElement(vElem) positions vElem on the screen.</li>
</ol>