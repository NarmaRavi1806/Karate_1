Feature: get microservices testing

 
Scenario: test get services
	Given url resturl
	When path '/users'
	And method GET
	Then status 200
	* print response
	* def count = response.length
	* print count

	
Scenario: test post services
	Given url resturl
	When path '/posts'
	And method GET
	Then status 200
	* print response
	* def count = response.length
	* print count