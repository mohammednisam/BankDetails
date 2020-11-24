BankDetails is a web service for get bank details
------------------------------------------------------------
There are two apis

	1.Api that returns details of given IFSC code:
		url : https://bankappnisam.herokuapp.com/api-bankdetails/bankdetails/
		parameter : IFSC CODE (strIfsc :'ABHY0065001')
		curl script : bank_details_by_ifsc.sh
		run command : bash bank_details_by_ifsc.sh ABHY0065001
	
	2.Api that return list of bank details according to given bank name and city with pagination(limit) and page number(offset)

		url :https://bankappnisam.herokuapp.com/api-bankdetails/banklist/
		parameter : Bank Name,City,Limit,Offset 
		curl script : bank_list_of_given_name_city.sh
		run command : bash bank_list_of_given_name_city.sh 'ABHYUDAYA COOPERATIVE BANK LIMITED' MUMBAI 10 2
				Bank Name - ABHYUDAYA COOPERATIVE BANK LIMITED
				City - MUMBAI
				Limit - 10
				Offset - 2

Time Taken For Project
-------------------------------
Development - 3 hours
Deployment - 2 hours


	
