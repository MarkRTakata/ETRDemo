<cfcomponent
	displayname="ETR Demo"
	output="true"
	hint="ETR Demo">
 
 
	<!--- Set up the application. --->
	<cfset THIS.Name = "etrdemo" />
	<cfset THIS.ApplicationTimeout = CreateTimeSpan( 0, 2, 0, 0 ) /> <!--- dd,hh,mm,ss --->
	<cfset THIS.SessionTimeout = CreateTimeSpan( 0, 2, 0, 0 ) /> <!--- dd,hh,mm,ss --->
    
	<cfset THIS.SessionManagement = true />
	<cfset THIS.SetClientCookies = false />
	
	<cfset THIS.datasource = "etrdemo" />
 	
	<!--- Define the page request properties. --->
	<cfsetting
		requesttimeout="20"
		showdebugoutput="false"
		enablecfoutputonly="false"
	/>
 
 
</cfcomponent>