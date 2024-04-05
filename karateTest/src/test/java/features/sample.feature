Feature: Testing the microservices
Scenario: print scenario
	* print 'Hello'
	* def x = 200
	* def y = 300
	* print 'The sum is :' + (x+y)
	
	
	Scenario: test local microservices
	Given url 'http://localhost:8082/activity'
	When method GET
	Then status 200