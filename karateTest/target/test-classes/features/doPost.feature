Feature: prot methos testing
Scenario: Post method testing
	Given url 'https://gorest.co.in/public/v2/users'
	And request {'name':'Narma','gender':'female','status':'active','job':'tester','email':'narma@gmail.com'}
	When method post
	Then match response.message == 'Authentication failed'
	
	
#Scenario: create user
	#Given url 'https://gorest.co.in/public/v2/users'
	#* header Authorization = 'Bearer 912aae4368916d05d0ae00994dcf9085efbb67c052afe85f451ea524f8fde434'
	#And request {'name':'Narma2','gender':'female','status':'active','job':'tester','email':'narma3@gmail.com'}
	#When method post
	#Then status 201
	#Then match response.email == 'narma3@gmail.com'
	
	
Scenario Outline: create multiple user
	Given url 'https://gorest.co.in/public/v2/users'
	* header Authorization = 'Bearer 912aae4368916d05d0ae00994dcf9085efbb67c052afe85f451ea524f8fde434'
	And request 
	"""
	{'name':'<name>',
	'gender':'<gender>',
	'status':'<status>',
	'job':'<job>',
	'email':'<email>'}
	"""
	When method post
	Then status 201
	Then match response.email == '<email>'
	
	Examples:
		|karate.read('file:src/test/java/utils/Data1.csv')|
		#|name|gender|job|status|email|
		#|Nari|male|dev|active|nari1@gmail.com|
		#|Nate|female|analyst|active|nate1@gmail.com|
		#|Mike|male|dec|active|mike1@gmail.com|
		
	