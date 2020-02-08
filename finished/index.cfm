<cfobject name="functions" component="functions">
<cfinclude template="/inc/h.cfm" />
<h1>Code for 1st</h1>
	<cfquery name="challenge1">
		SELECT tblContact.contactName
		FROM tblContact 
		LEFT JOIN tblShop ON
		tblContact.shopID = tblShop.shopID
		WHERE tblShop.name LIKE 'California%'
	</cfquery>
	<cfoutput query="challenge1">
		#contactName#
		</cfoutput>
<hr />	
	<h1>Code for 2nd</h1>
	<cfparam name="currentdatetime" default="#NOW()#" />
	<cfquery name="challenge2">
		SELECT tblShop.shopID, tblShop.name, tblShop.city, tblShop.state, tblShopContract.shopContractID, tblShopContract.shopID, tblShopContract.contractStartDate, tblShopContract.contractEndDate
		FROM tblShop
		INNER JOIN tblShopContract ON
		tblShop.shopID = tblShopContract.shopID
		WHERE tblShopContract.contractStartDate <= #currentdatetime#
		AND tblShopContract.contractEndDate	>= #currentdatetime#									   
	</cfquery>
	<cfdump var="#challenge2#">
<hr />	
	<h1>Code for 3rd</h1>
	<cfinvoke component="#functions#" method="getactiveshops" returnvariable="activeshops">	
		<cfinvokeargument name="city" value="Foster City" />
		<cfinvokeargument name="state" value="CA" />	
	</cfinvoke>
	<cfdump var="#activeshops#">
<hr />			
<h1>Code for 4th</h1>	
		
<cfscript>

function printTable(){
	var val = 0;
	var bgcolor = "yellow";
	writeOutput("<table><tr>");
	for (val=1;val<145;val++){
	   	writeOutput("<td style='padding:10px;background-color:" & bgcolor & "'>" & val & "</td>");
			if(!val MOD 12 && val > 1){
			if(bgcolor=="white"){
				bgcolor = "yellow";
			}
			else {
				bgcolor = "white";
			}
			writeOutput("</tr><tr style='background-color: " & bgcolor & "'>");	
		}	
							  
	}
	writeOutput("</table>")						   
}
   printTable();
</cfscript>
<hr />			
<h1>Code for 5th</h1>
<cffunction name="chocolatecake" access="public" returntype="String">
  <cfargument name="cc" default="0">
	<cfscript>
		var chocolate = arguments.cc MOD 3;
		var cake = arguments.cc MOD 5;
		if (! chocolate and ! cake){
			return "ChocolateCake";	
		}
		else if (! chocolate){
			return "Chocolate";	
		}
		else if (! cake){
			return "Cake";	
		}
		else {
		return arguments.cc;
		}
		return cc;
	</cfscript>
</cffunction>
<cfoutput>
	<ul>
		<cfloop from="1" to="100" index="i">
			<li>#chocolatecake(i)#</li>
		</cfloop>
	</ul>
</cfoutput>		
<hr />			
<h1>Code for 6th</h1>
	<cfset stringwithHTML = "<div>Hi there I like HTML</div><br /><strong>This is bold</strong>" />
	<cfset stringwithHTMLRemoved = trim(ReReplaceNoCase(stringwithHTML, "<[^[:space:]][^>]*>", "", "ALL")) />
	<cfoutput>
			#stringwithHTML#<br />
			#stringwithHTMLRemoved#																						 
	</cfoutput>																									 
<cfinclude template="/inc/f.cfm" />