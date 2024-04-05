Feature: Json reading and parsing
Scenario: Json parsing
	* def jsoncontent = 
	"""
	{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
	"""
	* print jsoncontent.glossary.GlossDiv.GlossList.GlossEntry.ID
	* match jsoncontent.glossary.GlossDiv.GlossList.GlossEntry.ID == 'SGML'
	
	
Scenario: Json Reading
	* def jsoncontent =
	""" 
	[
	{"name" : "Nate",
	"code" : "1234"},
	{"name" : "Narma",
	"code" : "123"}
	]
	"""
	* print jsoncontent
	* print jsoncontent[0].name
	* print jsoncontent[1].code