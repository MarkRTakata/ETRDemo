<cfcomponent>
	<cffunction name="getactiveshops" output="false" returntype="query">
		<cfparam name="currentdatetime" default="#NOW()#" />
		<cfscript>
			
			
			
			getallinactive = queryExecute(
				"SELECT tblShop.shopID, tblShop.name, tblShop.city, tblShop.state, tblShopContract.shopContractID, tblShopContract.shopID, tblShopContract.contractStartDate, tblShopContract.contractEndDate
				FROM tblShop
				INNER JOIN tblShopContract ON
				tblShop.shopID = tblShopContract.shopID
				WHERE tblShopContract.contractStartDate <= #currentdatetime#
				AND tblShopContract.contractEndDate	>= #currentdatetime#
				AND tblShop.city = ?
				AND tblShop.state = ?
				",
				[#arguments.city#,#arguments.state#]
			);
			
			return getallinactive;
			
			//getallinactive = queryExecute(
			// 	"SELECT 	id, content, active
			//	FROM tbl_main
			//	WHERE active = :active",
			//	{active: 0}
			//);
			
		</cfscript>
	</cffunction>
	
	
	
	
</cfcomponent>