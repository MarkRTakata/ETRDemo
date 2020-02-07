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
	writeOutput("<table>");
	for (val=0;val<144;val++){
		bgcolor = "yellow";					   
		if(val MOD 12){
			writeOutput("<tr" & " style='background-color: " & bgcolor & "'");	
		}	
	   	writeOutput("<td style='padding:10px;background-color:" & bgcolor & "'>" & val & "</td>");
			if(val MOD 12){
			writeOutput("</tr>");	
		}				   
	}
	writeOutput("</table>")						   
}
   printTable();
</cfscript>
		
		
		
<cfinclude template="/inc/f.cfm" />