<cfobject name="functions" component="functions">
<cfinvoke component="#functions#" method="genericfunction" returnvariable="q" />
<cfinvoke component="#functions#" method="genericfunction2" returnvariable="qq" />
<cfinclude template="/inc/h.cfm" />
<cfscript>
	writeDump(#q#);	
	writeDump(#qq#);	
</cfscript>
<cfinclude template="/inc/f.cfm" />