Feature: get microservices testing

Background: 
	* url 'https://gorest.co.in/public/v2'  
Scenario: test get services
	* def query = {id: '6815701'}
	When path '/users'
	And params query
	And method GET
	Then status 200
	* print response
	* def count = response.length
	* print count
	* match count == 1
	* def name = response[1].name
	* match name == 'Rukhmani Nayar'
	
Scenario: test post services
	When path '/posts'
	And method GET
	Then status 200
	* print response
	* def count = response.length
	* print count