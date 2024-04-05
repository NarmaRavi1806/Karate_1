Feature: Test using Java

Scenario: call from java
	* def javafunc = Java.type('utils.KarateUsingJava')
	* def javaop = javafunc.callFromJava("Narma")
	* print javaop
	And karate.write('javaop','result.txt')
	And def reqbody = karate.read('')
	And def reqchange = karate.read('')
	* def statusfromfile = reqchange.status
	