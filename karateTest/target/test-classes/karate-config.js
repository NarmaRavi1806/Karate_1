function fn() {
var env = 'dev'; //system property
karate.log('select end is : ' + env);
var config = {
	resturl : 'https://gorest.co.in/public/v2'
	}
if( env == 'dev'){
	config.resturl = 'https://gorest.co.in/public/v1';
	}
	else
	{
	config.resturl = 'https://gorest.co.in/public/v2';
	}
	
return config;
}