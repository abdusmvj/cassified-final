

    
     <form action="postclassifiedadvs" method="post">
     <dl>
	<dt>
		<label  for="firstname">First Name:</label>
	</dt>
	<dd>
		<input
			name="firstname"
			id="firstname"
			type="text" />



		<span class="hint">This is the name your mama called you when you were little.<span class="hint-pointer">&nbsp;</span></span>




	</dd>
	<dt>
		<label for="lastname">Last Name:</label>
	</dt>
	<dd>
		<input
			name="lastname"
			id="lastname"
			type="text" />
		<span class="hint">This is the name your sergeant called you when you went through bootcamp.<span class="hint-pointer">&nbsp;</span></span>
	</dd>

	<dt>
		<label for="email">Email:</label>
	</dt>
	<dd>
		<input
			name="email"
			id="email"
                        type="text" />
		<span class="hint">The thing with the @ symbol and the dot com at the end.<span class="hint-pointer">&nbsp;</span></span>
	</dd>
	<dt>

		<label for="textareastory">What's the story of your life?</label>
	</dt>
	<dd>
            <textarea id="textareastory" name="textareastory"></textarea>
		<span class="hint" >Tell me all about it.<span class="hint-pointer">&nbsp;</span></span>
	</dd>
	<dt><label for="year">Birth Year:</label></dt>

	<dd>
		<select id="year" name="year">
			<option value="">YYYY</option>
			<option value="1066">1066</option>
			<option value="1492">1492</option>
			<option value="1776">1776</option>
			<option value="1812">1812</option>

			<option value="1917">1917</option>
			<option value="1942">1942</option>
			<option value="1999">1999</option>
		</select>
		<span class="hint">Pick a famous year to be born in.<span class="hint-pointer">&nbsp;</span></span>
	</dd>
	<dt>

		<label for="username">Primary Contact:</label>
	</dt>
	<dd>
		<input
			name="username"
			id="username"
			type="text" />
		<span class="hint">Maximum 10 digits will be required.<span class="hint-pointer">&nbsp;</span></span>
	</dd>
	<dt>
		<label for="duration">Booking Duration:</label>

	</dt>
	<dd>
		<input
			name="duration"
			id="duration"
			type="duration" />
		<span class="hint">Between 5-13 characters, but not 7.  Never 7.<span class="hint-pointer">&nbsp;</span></span>
	</dd>
        <dt></dt>
        <dd><input type="submit" value="submit"/></dd>
        
</dl>
         
     </form>

 