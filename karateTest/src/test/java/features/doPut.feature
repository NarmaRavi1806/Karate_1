Feature: to test put method

Scenario: update Service
	Given url 'https://gorest.co.in/public/v1/users/6819947'
	* header Authorization = 'Bearer 912aae4368916d05d0ae00994dcf9085efbb67c052afe85f451ea524f8fde434'
	And request
	"""
	{'name' : 'sandy updated1'}
	"""
	When method put
	Then status 200
	* print response
	
	
Scenario: Verify updated in backend
Given url 'https://gorest.co.in/public/v1/users/6819947'
* header Authorization = 'Bearer 912aae4368916d05d0ae00994dcf9085efbb67c052afe85f451ea524f8fde434'
When method get
Then status 200
And match response.name == 'sandy updated1'