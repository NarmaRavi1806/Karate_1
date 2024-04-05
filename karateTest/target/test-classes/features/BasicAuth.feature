Feature: test basic auth get
Scenario: test local microservices
	* def configData = karate.read('file:src/test/java/utils/global.json')
	* print configData
	* def username = configData.username
	* def password = configData.password
	* def suffix = configData.suffix
	* def endp = 'https://'+ username + ':' + password + '@' + suffix
	#* def endpoint = 'https://admin:admin@the-internet.herokuapp.com/basic_auth'+
	Given url endp
	When method GET
	Then status 200
	Then match $ contains 'Congratulations'
	* print response
	

Scenario: read and print csv
	* def csvData = karate.read('file:src/test/java/utils/data.csv')
	* print csvData
	* def first = csvData[0]
	Given url 'http://localhost:8082/activity'
	When method GET
	Then status 200
	Then match $ contains first
	And match csvData contains $
	