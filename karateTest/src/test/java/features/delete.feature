Feature: delete func test

Scenario: check delete
	Given url 'https://gorest.co.in/public/v1/users/6819881'
	* header Authorization = 'Bearer 912aae4368916d05d0ae00994dcf9085efbb67c052afe85f451ea524f8fde434'
	When method delete
	Then status 204
	* print response