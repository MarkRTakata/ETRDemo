<cfcomponent>
	<cffunction name="genericfunction" output="false" returntype="query">
		<cfscript>
			getallactive = queryExecute(
				"SELECT 	id, content, active
				FROM tbl_main
				WHERE active = :active",
				{active: 1}
			);
			return getallactive;
		</cfscript>
	</cffunction>
	<cffunction name="genericfunction2" output="false" returntype="query">
		<cfscript>
			getallinactive = queryExecute(
				"SELECT 	id, content, active
				FROM tbl_main
				WHERE active = :active",
				{active: 0}
			);
			return getallinactive;
		</cfscript>
	</cffunction>
</cfcomponent>