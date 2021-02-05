___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Array Objects - And Or Validations - Datalayer Driven",
  "description": "Compare items in an array to see if the object in the array passes conditions we set, return either an array of matching objects or predefined variables",
  "categories": [
    "UTILITY"
  ],
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "MACRO",
  "version": 1,
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SIMPLE_TABLE",
    "name": "arrayTarget",
    "displayName": "The array to use, this can be a nested array, each row should indicate an array, the next row being the path within the previous array.",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Array Endpoint",
        "name": "arrayEndpoint",
        "type": "TEXT"
      }
    ],
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "errorMessage": "There must be at least one path to the dataLayer array that needs to be accessed"
      }
    ],
    "help": "A path to an array \"thePath.toAnArray\""
  },
  {
    "alwaysInSummary": true,
    "displayName": "If these conditions are met",
    "name": "or_table_one",
    "simpleTableColumns": [
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "",
        "displayName": "If",
        "name": "entry",
        "type": "TEXT"
      },
      {
        "selectItems": [
          {
            "displayValue": "equals",
            "value": "equals"
          },
          {
            "displayValue": "contains",
            "value": "contains"
          },
          {
            "displayValue": "starts with",
            "value": "startsWith"
          },
          {
            "displayValue": "ends with",
            "value": "endsWith"
          },
          {
            "displayValue": "matches RegEx",
            "value": "matchesRegEx"
          },
          {
            "displayValue": "matches RegEx (ignore case)",
            "value": "matchesRegExIgnoreCase"
          },
          {
            "displayValue": "does not equal",
            "value": "doesNotEqual"
          },
          {
            "displayValue": "does not contain",
            "value": "doesNotContain"
          },
          {
            "displayValue": "does not start with",
            "value": "doesNotStartWith"
          },
          {
            "displayValue": "does not end with",
            "value": "doesNotEndWith"
          },
          {
            "displayValue": "does not match RegEx",
            "value": "doesNotMatchRegEx"
          },
          {
            "displayValue": "does not match RegEx (ignore case)",
            "value": "doesNotMatchRegExIgnoreCase"
          },
          {
            "displayValue": "less than",
            "value": "lessThan"
          },
          {
            "displayValue": "less than or equal to",
            "value": "lessThanOrEqualTo"
          },
          {
            "displayValue": "greater than",
            "value": "greaterThan"
          },
          {
            "displayValue": "greater than or equal to",
            "value": "greaterThanOrEqualTo"
          },
          {
            "value": "equalsIgnoreCase",
            "displayValue": "equals (ignore case)"
          }
        ],
        "defaultValue": "equals",
        "displayName": "Matches",
        "name": "method",
        "type": "SELECT"
      },
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "",
        "displayName": "This",
        "name": "comparator",
        "isUnique": false,
        "type": "TEXT"
      }
    ],
    "type": "SIMPLE_TABLE",
    "newRowButtonText": "add \"or\" condition",
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "errorMessage": "There must be at least one rule to be used for comparisons"
      }
    ]
  },
  {
    "alwaysInSummary": false,
    "displayName": "And these conditions are met",
    "name": "or_table_two",
    "simpleTableColumns": [
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "",
        "displayName": "If",
        "name": "entry",
        "type": "TEXT"
      },
      {
        "selectItems": [
          {
            "displayValue": "equals",
            "value": "equals"
          },
          {
            "displayValue": "contains",
            "value": "contains"
          },
          {
            "displayValue": "starts with",
            "value": "startsWith"
          },
          {
            "displayValue": "ends with",
            "value": "endsWith"
          },
          {
            "displayValue": "matches RegEx",
            "value": "matchesRegEx"
          },
          {
            "displayValue": "matches RegEx (ignore case)",
            "value": "matchesRegExIgnoreCase"
          },
          {
            "displayValue": "does not equal",
            "value": "doesNotEqual"
          },
          {
            "displayValue": "does not contain",
            "value": "doesNotContain"
          },
          {
            "displayValue": "does not start with",
            "value": "doesNotStartWith"
          },
          {
            "displayValue": "does not end with",
            "value": "doesNotEndWith"
          },
          {
            "displayValue": "does not match RegEx",
            "value": "doesNotMatchRegEx"
          },
          {
            "displayValue": "does not match RegEx (ignore case)",
            "value": "doesNotMatchRegExIgnoreCase"
          },
          {
            "displayValue": "less than",
            "value": "lessThan"
          },
          {
            "displayValue": "less than or equal to",
            "value": "lessThanOrEqualTo"
          },
          {
            "displayValue": "greater than",
            "value": "greaterThan"
          },
          {
            "displayValue": "greater than or equal to",
            "value": "greaterThanOrEqualTo"
          },
          {
            "value": "equalsIgnoreCase",
            "displayValue": "equals (ignore case)"
          }
        ],
        "defaultValue": "equals",
        "displayName": "Matches",
        "name": "method",
        "type": "SELECT"
      },
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "",
        "displayName": "This",
        "name": "comparator",
        "isUnique": false,
        "type": "TEXT"
      }
    ],
    "type": "SIMPLE_TABLE",
    "newRowButtonText": "add \"or\" condition",
    "enablingConditions": [
      {
        "paramName": "or_table_one",
        "paramValue": "",
        "type": "PRESENT"
      }
    ]
  },
  {
    "alwaysInSummary": false,
    "displayName": "And these conditions are met",
    "name": "or_table_three",
    "simpleTableColumns": [
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "",
        "displayName": "If",
        "name": "entry",
        "type": "TEXT"
      },
      {
        "selectItems": [
          {
            "displayValue": "equals",
            "value": "equals"
          },
          {
            "displayValue": "contains",
            "value": "contains"
          },
          {
            "displayValue": "starts with",
            "value": "startsWith"
          },
          {
            "displayValue": "ends with",
            "value": "endsWith"
          },
          {
            "displayValue": "matches RegEx",
            "value": "matchesRegEx"
          },
          {
            "displayValue": "matches RegEx (ignore case)",
            "value": "matchesRegExIgnoreCase"
          },
          {
            "displayValue": "does not equal",
            "value": "doesNotEqual"
          },
          {
            "displayValue": "does not contain",
            "value": "doesNotContain"
          },
          {
            "displayValue": "does not start with",
            "value": "doesNotStartWith"
          },
          {
            "displayValue": "does not end with",
            "value": "doesNotEndWith"
          },
          {
            "displayValue": "does not match RegEx",
            "value": "doesNotMatchRegEx"
          },
          {
            "displayValue": "does not match RegEx (ignore case)",
            "value": "doesNotMatchRegExIgnoreCase"
          },
          {
            "displayValue": "less than",
            "value": "lessThan"
          },
          {
            "displayValue": "less than or equal to",
            "value": "lessThanOrEqualTo"
          },
          {
            "displayValue": "greater than",
            "value": "greaterThan"
          },
          {
            "displayValue": "greater than or equal to",
            "value": "greaterThanOrEqualTo"
          },
          {
            "value": "equalsIgnoreCase",
            "displayValue": "equals (ignore case)"
          }
        ],
        "defaultValue": "equals",
        "displayName": "Matches",
        "name": "method",
        "type": "SELECT"
      },
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "",
        "displayName": "This",
        "name": "comparator",
        "isUnique": false,
        "type": "TEXT"
      }
    ],
    "type": "SIMPLE_TABLE",
    "newRowButtonText": "add \"or\" condition",
    "enablingConditions": [
      {
        "paramName": "or_table_two",
        "paramValue": "",
        "type": "PRESENT"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "returnOptions",
    "displayName": "Defined the return options",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "manual",
        "displayValue": "Manually Defined"
      },
      {
        "value": "objects",
        "displayValue": "Return Matched Objects"
      }
    ],
    "simpleValueType": true
  },
  {
    "displayName": "Return this value if conditions are met",
    "simpleValueType": true,
    "name": "returnIfTrue",
    "type": "TEXT",
    "enablingConditions": [
      {
        "paramName": "returnOptions",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "Otherwise return this value",
    "simpleValueType": true,
    "name": "returnIfFalse",
    "type": "TEXT",
    "enablingConditions": [
      {
        "paramName": "returnOptions",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "targetEvents",
    "displayName": "The name(s) of the dataLayer event(s) where this variable should return values. Leave blank to run for all events",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Name",
        "name": "name",
        "type": "TEXT"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

//const log = require('logToConsole');
const copyFromDataLayer = require("copyFromDataLayer");
let testing = false || data.testing;

let currentArray;
let arraysMapped = [];
let dataLayer;

if(!data.arrayTarget){
  return undefined;
}

if(data.targetEvents){
  let eventMap = data.targetEvents.map((i) => {
    return i.name;
  });

  let event;
  if(data.testing){
    event = data.dataLayer.event;
  } else {
    event = copyFromDataLayer("event");
  }

  if(eventMap.indexOf(event) === -1){
    return undefined;
  }
}


let endPoint;
for(var l = 0; l < data.arrayTarget.length; l++){
  let lookupKey = data.arrayTarget[l].arrayEndpoint.split(".");
  arraysMapped = [];
  if(l === 0){
    for(var lk = 0; lk < lookupKey.length; lk++){
        if(lk === 0){
        if(data.testing){
          endPoint = data.dataLayer[lookupKey[lk]];
        } else {
          endPoint = copyFromDataLayer(lookupKey[lk]);
          if(!endPoint){
            return undefined;
          }
        }
      } else {
        endPoint = endPoint[lookupKey[lk]];
      }
    }
    // Flatten everything in the array 
    for(var i = 0; i < endPoint.length; i++){
      arraysMapped = arraysMapped.concat(endPoint[i]);
    }
    currentArray = arraysMapped;
  } else {
    // For each item in the array we need to get the object and iterate up to return the array at the end point
    for(var i = 0; i < currentArray.length; i++){
      var objectInArray = currentArray[i];
      for(var lk = 0; lk < lookupKey.length; lk++){
        // if this is the first item in the array, redefine endPoint
        if(lk === 0) endPoint = objectInArray;
        endPoint = endPoint[lookupKey[lk]];
      }
      arraysMapped = arraysMapped.concat(endPoint);
    }
    currentArray = arraysMapped;
  }
} 


const RULE = {
  equals: (entry,comp) => {
  	return entry == comp;
  },
  equalsIgnoreCase: (entry,comp) => {
  	return entry.toLowerCase() == comp.toLowerCase();
  },
  contains: (entry,comp) => {
  	return (-1 < entry.indexOf(comp));
  },
  startsWith: (entry,comp) => {
  	return entry.match('^('+comp+')');
  },
  endsWith: (entry,comp) => {
  	return entry.match('('+comp+')$');
  },
  matchesRegEx: (entry,comp) => {
  	return entry.match(comp);
  },
  matchesRegExIgnoreCase: (entry,comp) => {
  	return entry.toLowerCase().match(comp.toLowerCase());
  },
  doesNotEqual: (entry,comp) => {
  	return entry != comp;
  },
  doesNotContain: (entry,comp) => {
  	return (-1 > entry.indexOf(comp));
  },
  doesNotStartWith: (entry,comp) => {
  	return !entry.match('^('+comp+')');
  },
  doesNotEndWith: (entry,comp) => {
  	return !entry.match('('+comp+')$');
  },
  doesNotMatchRegEx: (entry,comp) => {
  	return !entry.match(comp);
  },
  doesNotMatchRegExIgnoreCase: (entry,comp) => {
  	return !entry.toLowerCase().match(comp.toLowerCase());
  },
  lessThan: (entry,comp) => {
  	return entry < comp;
  },
  lessThanOrEqualTo: (entry,comp) => {
  	return entry <= comp;
  },
  greaterThan: (entry,comp) => {
  	return entry > comp;
  },
  greaterThanOrEqualTo: (entry,comp) => {
  	return entry >= comp;
  }
};

function resolve(x)
{
  switch (typeof x) {
    case 'undefined': x = typeof x; break;
    case 'boolean': x = x ? 'true' : 'false'; break;
  }
  return x;
}

const ruleComparisons = (rules,object) => {
  if ('undefined' != typeof rules) {
  for (let i=0; i<rules.length; i++) {
    let rule = rules[i];
    let entry = object[rule.entry];
    let comparitor = rule.comparator;
    if ( RULE[rule.method](resolve(entry),resolve(comparitor)) ) {
      return true;
    }
  }
  return false;
 } else {
  return true;
 }
};

let ruleOneOutput;
let ruleTwoOutput;
let ruleThreeOutput;
let returnArray = [];
//log("the array to inspect for and / or comparisons is: ",currentArray);
for(var f = 0; f < currentArray.length; f++){
  let rulesOne = data.or_table_one;
  let comparisonObject = currentArray[f];
  ruleOneOutput = ruleComparisons(data.or_table_one,currentArray[f]);
  ruleTwoOutput = ruleComparisons(data.or_table_two,currentArray[f]);
  ruleThreeOutput = ruleComparisons(data.or_table_three,currentArray[f]);
  if(ruleOneOutput && ruleTwoOutput && ruleThreeOutput){
    if(data.returnOptions === "manual"){
      return data.returnIfTrue;
    } else if(data.returnOptions === "object"){
      returnArray.push(comparisonObject);
    }
  }
}
if(data.returnOptions === "manual"){
  return data.returnIfFalse;
} else if (data.returnOptions === "object"){
  return returnArray;
} else {
  return undefined;
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "accountSettings.*"
              },
              {
                "type": 1,
                "string": "contactOptions.*"
              },
              {
                "type": 1,
                "string": "depositComplete.*"
              },
              {
                "type": 1,
                "string": "depositFailed.*"
              },
              {
                "type": 1,
                "string": "depositLimit.*"
              },
              {
                "type": 1,
                "string": "addSelection.*"
              },
              {
                "type": 1,
                "string": "addSelectionFailed.*"
              },
              {
                "type": 1,
                "string": "betslip.*"
              },
              {
                "type": 1,
                "string": "placedBets.*"
              },
              {
                "type": 1,
                "string": "placedBetsFailed.*"
              },
              {
                "type": 1,
                "string": "event.*"
              },
              {
                "type": 1,
                "string": "platform.*"
              },
              {
                "type": 1,
                "string": "testing.*"
              },
              {
                "type": 1,
                "string": "user.*"
              },
              {
                "type": 1,
                "string": "lossLimit.*"
              },
              {
                "type": 1,
                "string": "networkError.*"
              },
              {
                "type": 1,
                "string": "quickDepositFailed.*"
              },
              {
                "type": 1,
                "string": "realityCheck.*"
              },
              {
                "type": 1,
                "string": "registationCompleted.*"
              },
              {
                "type": 1,
                "string": "registrationFailed.*"
              },
              {
                "type": 1,
                "string": "runtimeError.*"
              },
              {
                "type": 1,
                "string": "searchData.*"
              },
              {
                "type": 1,
                "string": "timeoutError.*"
              },
              {
                "type": 1,
                "string": "pageView.*"
              },
              {
                "type": 1,
                "string": "withdrawalCompleted.*"
              },
              {
                "type": 1,
                "string": "withdrawalFailed.*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Deep Array 2 Depth - True
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"manual\",\n \
    \ \"or_table_two\":[{\"entry\":\"name\",\"method\":\"equals\",\"comparator\":\"\
    joe\"}],\"or_table_one\":[{\"entry\":\"age\",\"method\":\"equals\",\"comparator\"\
    :\"20\"}],\"returnIfTrue\":\"true\",\"arrayTarget\":[{\"arrayEndpoint\":\"testing.arrayOne\"\
    },{\"arrayEndpoint\":\"objectOne.arrayTwo\"}],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    \"testing\": {\n      \"arrayOne\": [\n        {\n  \
    \        \"objectOne\": {\n           \"arrayTwo\": [\n             {\"name\"\
    : \"joe\", \"age\": \"20\"}, \n             {\"name\": \"jim\", \"age\": \"20\"\
    }\n           ]\n         }, \n         \"objectTwo\": false\n        },\n   \
    \     {\"objectOne\": {\"arrayTwo\": [\n          {\"name\": \"Mary\",\" age\"\
    : \"40\"}, {\"name\": \"Josie\", \"age\": \"24\"}\n        ]}, objectTwo: true}\n\
    \      ]\n    }\n  }\n};\n\n\n// Call runCode to run the template's code.\nlet\
    \ variableResult = runCode(mockData);\n\n// Verify that the variable returns a\
    \ result.\nassertThat(variableResult).isEqualTo(\"true\");"
- name: Deep Array 2 Depth - False
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"manual\",\n \
    \ \"or_table_two\":[{\"entry\":\"name\",\"method\":\"equals\",\"comparator\":\"\
    joe\"}],\"or_table_one\":[{\"entry\":\"age\",\"method\":\"equals\",\"comparator\"\
    :\"20\"}],\"returnIfTrue\":\"true\",\"arrayTarget\":[{\"arrayEndpoint\":\"testing.arrayOne\"\
    },{\"arrayEndpoint\":\"objectOne.arrayTwo\"}],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    \"testing\": {\n      \"arrayOne\": [\n        {\n  \
    \        \"objectOne\": {\n           \"arrayTwo\": [\n             {\"name\"\
    : \"joe\", \"age\": \"21\"}, \n             {\"name\": \"jim\", \"age\": \"20\"\
    }\n           ]\n         }, \n         \"objectTwo\": false\n        },\n   \
    \     {\"objectOne\": {\"arrayTwo\": [\n          {\"name\": \"Mary\",\" age\"\
    : \"40\"}, {\"name\": \"Josie\", \"age\": \"24\"}\n        ]}, objectTwo: true}\n\
    \      ]\n    }\n  }\n};\n\n\n// Call runCode to run the template's code.\nlet\
    \ variableResult = runCode(mockData);\n\n// Verify that the variable returns a\
    \ result.\nassertThat(variableResult).isEqualTo(\"false\");"
- name: Deep Array 3 Object Depth - True
  code: |-
    const mockData = {
        testing: true,
        "returnOptions":"manual",
        "or_table_two": [{
          "entry": "name",
          "method": "equals",
          "comparator": "joe"
        }],
        "or_table_one": [{
          "entry": "age",
          "method": "equals",
          "comparator": "20"
        }],
        "returnIfTrue": "true",
        "arrayTarget": [{
          "arrayEndpoint": "testing.objectOne.arrayOne"
        }, {
          "arrayEndpoint": "objectTwo.objectThree.arrayTwo"
        }],
        "returnIfFalse": "false",
        "gtmEventId": 1,
        dataLayer: {
          "testing": {
            "objectOne": {
              "arrayOne": [{
                  "objectTwo": {
                    "objectThree": {
                      "arrayTwo": [{
                          "name": "joe",
                          "age": "20"
                        },
                        {
                          "name": "jim",
                          "age": "20"
                        }
                      ]
                    },
                    "objectFour": false
                  }
                },
                {
                  "objectTwo": {
                    "objectThree": {
                      "arrayTwo": [{
                        "name": "Mary",
                        " age": "40"
                      }, {
                        "name": "Josie",
                        "age": "24"
                      }]
                    },
                    objectFour: true
                  }
                }
              ]
            }
          }
        }
    };


        // Call runCode to run the template's code.
        let variableResult = runCode(mockData);

        // Verify that the variable returns a result.
        assertThat(variableResult).isEqualTo("true");
- name: Deep Array 3 Object Depth - False
  code: |-
    const mockData = {
        testing: true,
        "returnOptions":"manual",
        targetEvents:[{"name":"login-complete"}],
        "or_table_two": [{
          "entry": "name",
          "method": "equals",
          "comparator": "joe"
        }],
        "or_table_one": [{
          "entry": "age",
          "method": "equals",
          "comparator": "20"
        }],
        "returnIfTrue": "true",
        "arrayTarget": [{
          "arrayEndpoint": "testing.objectOne.arrayOne"
        }, {
          "arrayEndpoint": "objectTwo.objectThree.arrayTwo"
        }],
        "returnIfFalse": "false",
        "gtmEventId": 1,
        dataLayer: {
          event: "login-complete",
          "testing": {
            "objectOne": {
              "arrayOne": [{
                  "objectTwo": {
                    "objectThree": {
                      "arrayTwo": [{
                          "name": "joe",
                          "age": "21"
                        },
                        {
                          "name": "jim",
                          "age": "20"
                        }
                      ]
                    },
                    "objectFour": false
                  }
                },
                {
                  "objectTwo": {
                    "objectThree": {
                      "arrayTwo": [{
                        "name": "Mary",
                        " age": "40"
                      }, {
                        "name": "Josie",
                        "age": "24"
                      }]
                    },
                    objectFour: true
                  }
                }
              ]
            }
          }
        }
    };


        // Call runCode to run the template's code.
        let variableResult = runCode(mockData);

        // Verify that the variable returns a result.
        assertThat(variableResult).isEqualTo("false");
- name: Different Event - undefined
  code: |-
    const mockData = {
        testing: true,
        "returnOptions":"manual",
        targetEvents:[{"name":"login-complete"}],
        "or_table_two": [{
          "entry": "name",
          "method": "equals",
          "comparator": "joe"
        }],
        "or_table_one": [{
          "entry": "age",
          "method": "equals",
          "comparator": "20"
        }],
        "returnIfTrue": "true",
        "arrayTarget": [{
          "arrayEndpoint": "testing.objectOne.arrayOne"
        }, {
          "arrayEndpoint": "objectTwo.objectThree.arrayTwo"
        }],
        "returnIfFalse": "false",
        "gtmEventId": 1,
        dataLayer: {
          event: "login-failed",
          "testing": {
            "objectOne": {
              "arrayOne": [{
                  "objectTwo": {
                    "objectThree": {
                      "arrayTwo": [{
                          "name": "joe",
                          "age": "21"
                        },
                        {
                          "name": "jim",
                          "age": "20"
                        }
                      ]
                    },
                    "objectFour": false
                  }
                },
                {
                  "objectTwo": {
                    "objectThree": {
                      "arrayTwo": [{
                        "name": "Mary",
                        " age": "40"
                      }, {
                        "name": "Josie",
                        "age": "24"
                      }]
                    },
                    objectFour: true
                  }
                }
              ]
            }
          }
        }
    };


        // Call runCode to run the template's code.
        let variableResult = runCode(mockData);

        // Verify that the variable returns a result.
        assertThat(variableResult).isEqualTo(undefined);
- name: One Sided Test (or only) - True
  code: |-
    const mockData = {
      testing: true,
      "returnOptions":"manual",
      "targetEvents":[{"name":"fixed-odds-bets-placed"}],
      "or_table_one":[{"entry":"marketName","method":"equals","comparator":"Match Result"},{"entry":"marketName","method":"equals","comparator":"something"}],"returnIfTrue":"true","arrayTarget":[{"arrayEndpoint":"placedBets.bets"},{"arrayEndpoint":"selections"}],"returnIfFalse":"false","gtmEventId":1,
      dataLayer: {
        event: "fixed-odds-bets-placed",
        placedBets:{  bets: [
          {
            selections: [
              {
                name: 'Wycombe Wanderers',
                id: 73628401,
                eventId: 869836,
                marketName: 'Match Result',
                marketId: '869836.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 7470,
                tournamentName: 'FA Cup',
                numerator: 11,
                denominator: 1,
                decimalPrice: 12,
                isSP: false,
                dateStart: '2021-01-25T19:45:00.000Z',
                teamHome: 'Wycombe Wanderers',
                teamAway: 'Tottenham Hotspur',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              }
            ],
            betType: 'Single',
            stake: 0.1,
            estimatedReturns: 1.2,
            isEachWay: false,
            isFreeBet: false
          },
          {
            selections: [
              {
                name: 'Wycombe Wanderers',
                id: 73628401,
                eventId: 869836,
                marketName: 'Match Result',
                marketId: '869836.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 7470,
                tournamentName: 'FA Cup',
                numerator: 11,
                denominator: 1,
                decimalPrice: 12,
                isSP: false,
                dateStart: '2021-01-25T19:45:00.000Z',
                teamHome: 'Wycombe Wanderers',
                teamAway: 'Tottenham Hotspur',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              },
              {
                name: 'Liverpool',
                id: 73107763,
                eventId: 870058,
                marketName: 'Match Result',
                marketId: '870058.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 633,
                tournamentName: 'Premier League',
                numerator: 5,
                denominator: 4,
                decimalPrice: 2.25,
                isSP: false,
                dateStart: '2021-01-28T20:00:00.000Z',
                teamHome: 'Tottenham Hotspur',
                teamAway: 'Liverpool',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              },
              {
                name: 'Athletic Bilbao',
                id: 73274101,
                eventId: 879157,
                marketName: 'Match Result',
                marketId: '879157.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 10695,
                tournamentName: 'Spanish Primera Division',
                numerator: 5,
                denominator: 4,
                decimalPrice: 2.25,
                isSP: false,
                dateStart: '2021-01-25T20:00:00.000Z',
                teamHome: 'Athletic Bilbao',
                teamAway: 'Getafe',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              }
            ]
          }]
         }
                 }
        };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isEqualTo("true");
- name: One Sided Test (or only) - False
  code: |-
    const mockData = {
      testing: true,
      "returnOptions":"manual",
      "targetEvents":[{"name":"fixed-odds-bets-placed"}],
      "or_table_one":[{"entry":"marketName","method":"equals","comparator":"something"}],"returnIfTrue":"true","arrayTarget":[{"arrayEndpoint":"placedBets.bets"},{"arrayEndpoint":"selections"}],"returnIfFalse":"false","gtmEventId":1,
      dataLayer: {
        event: "fixed-odds-bets-placed",
        placedBets:{  bets: [
          {
            selections: [
              {
                name: 'Wycombe Wanderers',
                id: 73628401,
                eventId: 869836,
                marketName: 'Match Result',
                marketId: '869836.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 7470,
                tournamentName: 'FA Cup',
                numerator: 11,
                denominator: 1,
                decimalPrice: 12,
                isSP: false,
                dateStart: '2021-01-25T19:45:00.000Z',
                teamHome: 'Wycombe Wanderers',
                teamAway: 'Tottenham Hotspur',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              }
            ],
            betType: 'Single',
            stake: 0.1,
            estimatedReturns: 1.2,
            isEachWay: false,
            isFreeBet: false
          },
          {
            selections: [
              {
                name: 'Wycombe Wanderers',
                id: 73628401,
                eventId: 869836,
                marketName: 'Match Result',
                marketId: '869836.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 7470,
                tournamentName: 'FA Cup',
                numerator: 11,
                denominator: 1,
                decimalPrice: 12,
                isSP: false,
                dateStart: '2021-01-25T19:45:00.000Z',
                teamHome: 'Wycombe Wanderers',
                teamAway: 'Tottenham Hotspur',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              },
              {
                name: 'Liverpool',
                id: 73107763,
                eventId: 870058,
                marketName: 'Match Result',
                marketId: '870058.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 633,
                tournamentName: 'Premier League',
                numerator: 5,
                denominator: 4,
                decimalPrice: 2.25,
                isSP: false,
                dateStart: '2021-01-28T20:00:00.000Z',
                teamHome: 'Tottenham Hotspur',
                teamAway: 'Liverpool',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              },
              {
                name: 'Athletic Bilbao',
                id: 73274101,
                eventId: 879157,
                marketName: 'Match Result',
                marketId: '879157.null:20001.null',
                sportName: 'Football ',
                sportId: 2,
                sportSlug: 'football',
                tournamentId: 10695,
                tournamentName: 'Spanish Primera Division',
                numerator: 5,
                denominator: 4,
                decimalPrice: 2.25,
                isSP: false,
                dateStart: '2021-01-25T20:00:00.000Z',
                teamHome: 'Athletic Bilbao',
                teamAway: 'Getafe',
                source: 'Sportsbook',
                isLive: false,
                jockeyName: '',
                stateOfPlay: ''
              }
            ]
          }]
         }
                 }
        };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isEqualTo("false");
- name: Simple Nested Array - equalsIgnoreCase Test - True
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"manual\",\n \
    \ \"or_table_two\":[{\"entry\":\"university\",\"method\":\"equalsIgnoreCase\"\
    ,\"comparator\":\"manchester\"}],\n  \"or_table_one\":[{\"entry\":\"hobby\",\"\
    method\":\"equals\",\"comparator\":\"swimming\"},{\"entry\":\"hobby\",\"method\"\
    :\"equalsIgnoreCase\",\"comparator\":\"waterpolo\"}],\n  \"returnIfTrue\":\"true\"\
    ,\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"arrayEndpoint\"\
    :\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\":1,\n  dataLayer:\
    \ {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name: \"Joe\", age:\
    \ \"20\", hobby: \"gym\", university: \"Manchester\"}, \n        {name: \"Jim\"\
    , age: \"21\", hobby: \"crafts\", university: \"Manchester\"}\n       ],\n   \
    \   objectTwo: false\n     },\n     {\n      arrayTwo: [\n       {name: \"Mary\"\
    ,age: \"40\", hobby: \"swimming\", university: \"Manchester\"}, \n       {name:\
    \ \"Josie\", age: \"24\", hobby: \"climbing\", university: \"Liverpool\"}\n  \
    \    ],\n      objectTwo: true\n     },\n     {\n      arrayTwo: [\n       {name:\
    \ \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university: \"Liverpool\"}, \n\
    \       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\", university: \"Liverpool\"\
    }\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo: [\n     \
    \  {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\", university: \"Manchester\"\
    }, \n       {name: \"Aoife\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     }\n   ]  \n  }\n  \n};\n\n\
    \n// Call runCode to run the template's code.\nlet variableResult = runCode(mockData);\n\
    \n// Verify that the variable returns a result.\nassertThat(variableResult).isEqualTo(\"\
    true\");"
- name: Simple Nested Array - object Return length 2
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_two\":[{\"entry\":\"university\",\"method\":\"equalsIgnoreCase\"\
    ,\"comparator\":\"manchester\"}],\n  \"or_table_one\":[{\"entry\":\"hobby\",\"\
    method\":\"equals\",\"comparator\":\"swimming\"},{\"entry\":\"hobby\",\"method\"\
    :\"equalsIgnoreCase\",\"comparator\":\"waterpolo\"}],\n  \"returnIfTrue\":\"true\"\
    ,\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"arrayEndpoint\"\
    :\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\":1,\n  dataLayer:\
    \ {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name: \"Joe\", age:\
    \ \"20\", hobby: \"gym\", university: \"Manchester\"}, \n        {name: \"Jim\"\
    , age: \"21\", hobby: \"crafts\", university: \"Manchester\"}\n       ],\n   \
    \   objectTwo: false\n     },\n     {\n      arrayTwo: [\n       {name: \"Mary\"\
    ,age: \"40\", hobby: \"swimming\", university: \"Manchester\"}, \n       {name:\
    \ \"Josie\", age: \"24\", hobby: \"climbing\", university: \"Liverpool\"}\n  \
    \    ],\n      objectTwo: true\n     },\n     {\n      arrayTwo: [\n       {name:\
    \ \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university: \"Liverpool\"}, \n\
    \       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\", university: \"Liverpool\"\
    }\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo: [\n     \
    \  {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\", university: \"Manchester\"\
    }, \n       {name: \"Aoife\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     }\n   ]  \n  }\n  \n};\n\n\
    \n// Call runCode to run the template's code.\nlet variableResult = runCode(mockData);\n\
    \n// Verify that the variable returns a result.\nassertThat(variableResult).hasLength(2);"
- name: Simple Nested Array - object Return length 1
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_two\":[{\"entry\":\"university\",\"method\":\"equalsIgnoreCase\"\
    ,\"comparator\":\"manchester\"}],\n  \"or_table_one\":[{\"entry\":\"hobby\",\"\
    method\":\"equals\",\"comparator\":\"swimming\"},{\"entry\":\"hobby\",\"method\"\
    :\"equalsIgnoreCase\",\"comparator\":\"waterpolo\"}],\n  \"or_table_three\":[{\"\
    entry\":\"age\",\"method\":\"equals\",\"comparator\":\"40\"}],\n  \"returnIfTrue\"\
    :\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"\
    arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name:\
    \ \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"}, \n      \
    \  {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(1);"
- name: Does Not Contain - object return length 1
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"equals\",\"comparator\"\
    :\"swimming\"},{\"entry\":\"hobby\",\"method\":\"equalsIgnoreCase\",\"comparator\"\
    :\"waterpolo\"}],\n  \"or_table_two\":[{\"entry\":\"university\",\"method\":\"\
    equalsIgnoreCase\",\"comparator\":\"manchester\"}],\n  \"or_table_three\":[{\"\
    entry\":\"age\",\"method\":\"doesNotEqual\",\"comparator\":\"40\"}],\n  \"returnIfTrue\"\
    :\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"\
    arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name:\
    \ \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"}, \n      \
    \  {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(1);"
- name: Greater Than - object return length 0
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"equals\",\"comparator\"\
    :\"swimming\"},{\"entry\":\"hobby\",\"method\":\"equalsIgnoreCase\",\"comparator\"\
    :\"waterpolo\"}],\n  \"or_table_two\":[{\"entry\":\"university\",\"method\":\"\
    equalsIgnoreCase\",\"comparator\":\"manchester\"}],\n  \"or_table_three\":[{\"\
    entry\":\"age\",\"method\":\"greaterThan\",\"comparator\":\"40\"}],\n  \"returnIfTrue\"\
    :\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"\
    arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name:\
    \ \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"}, \n      \
    \  {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(0);"
- name: Less Than - Object Return Length 1
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"equals\",\"comparator\"\
    :\"swimming\"},{\"entry\":\"hobby\",\"method\":\"equalsIgnoreCase\",\"comparator\"\
    :\"waterpolo\"}],\n  \"or_table_two\":[{\"entry\":\"university\",\"method\":\"\
    equalsIgnoreCase\",\"comparator\":\"manchester\"}],\n  \"or_table_three\":[{\"\
    entry\":\"age\",\"method\":\"lessThan\",\"comparator\":\"40\"}],\n  \"returnIfTrue\"\
    :\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"\
    arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name:\
    \ \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"}, \n      \
    \  {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(1);"
- name: Greater Than Or Equal To - Object Return Length 1
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"equals\",\"comparator\"\
    :\"swimming\"},{\"entry\":\"hobby\",\"method\":\"equalsIgnoreCase\",\"comparator\"\
    :\"waterpolo\"}],\n  \"or_table_two\":[{\"entry\":\"university\",\"method\":\"\
    equalsIgnoreCase\",\"comparator\":\"manchester\"}],\n  \"or_table_three\":[{\"\
    entry\":\"age\",\"method\":\"greaterThanOrEqualTo\",\"comparator\":\"40\"}],\n\
    \  \"returnIfTrue\":\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"\
    },\n   {\"arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name:\
    \ \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"}, \n      \
    \  {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(1);"
- name: Less Than Or Equal To - Object Return Length 2
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"equals\",\"comparator\"\
    :\"swimming\"},{\"entry\":\"hobby\",\"method\":\"equalsIgnoreCase\",\"comparator\"\
    :\"waterpolo\"}],\n  \"or_table_two\":[{\"entry\":\"university\",\"method\":\"\
    equalsIgnoreCase\",\"comparator\":\"manchester\"}],\n  \"or_table_three\":[{\"\
    entry\":\"age\",\"method\":\"lessThanOrEqualTo\",\"comparator\":\"40\"}],\n  \"\
    returnIfTrue\":\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\":\"arrayOne\"\
    },\n   {\"arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"false\",\"gtmEventId\"\
    :1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo: [\n        {name:\
    \ \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"}, \n      \
    \  {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(2);"
- name: Regex Match Multiple Ands - Object Return Length 1
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"matchesRegExIgnoreCase\"\
    ,\"comparator\":\"(swim).*?\"}],\n  \"or_table_two\":[{\"entry\":\"university\"\
    ,\"method\":\"matchesRegExIgnoreCase\",\"comparator\":\"(man).*?\"}],\n  \"or_table_three\"\
    :[{\"entry\":\"name\",\"method\":\"matchesRegExIgnoreCase\",\"comparator\":\"\
    (mar).*?\"}],\n  \"returnIfTrue\":\"true\",\n  \"arrayTarget\":[\n   {\"arrayEndpoint\"\
    :\"arrayOne\"},\n   {\"arrayEndpoint\":\"arrayTwo\"}\n  ],\"returnIfFalse\":\"\
    false\",\"gtmEventId\":1,\n  dataLayer: {\n    arrayOne: [\n     {\n       arrayTwo:\
    \ [\n        {name: \"Joe\", age: \"20\", hobby: \"gym\", university: \"Manchester\"\
    }, \n        {name: \"Jim\", age: \"21\", hobby: \"crafts\", university: \"Manchester\"\
    }\n       ],\n      objectTwo: false\n     },\n     {\n      arrayTwo: [\n   \
    \    {name: \"Mary\",age: \"40\", hobby: \"swimming\", university: \"Manchester\"\
    }, \n       {name: \"Josie\", age: \"24\", hobby: \"climbing\", university: \"\
    Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n      arrayTwo:\
    \ [\n       {name: \"Elizabeth\",age: \"19\", hobby: \"Pottery\", university:\
    \ \"Liverpool\"}, \n       {name: \"Sandra\", age: \"32\", hobby: \"Waterpolo\"\
    , university: \"Liverpool\"}\n      ],\n      objectTwo: true\n     },\n     {\n\
    \      arrayTwo: [\n       {name: \"Angeline\",age: \"39\", hobby: \"Waterpolo\"\
    , university: \"Manchester\"}, \n       {name: \"Aoife\", age: \"24\", hobby:\
    \ \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo: true\n\
    \     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode to run the template's code.\n\
    let variableResult = runCode(mockData);\n\n// Verify that the variable returns\
    \ a result.\nassertThat(variableResult).hasLength(1);"
- name: Regex Not Match Multiple Ands - Object Return Length 4
  code: "const mockData = {\n  testing: true,\n  \"returnOptions\":\"object\",\n \
    \ \"or_table_one\":[{\"entry\":\"hobby\",\"method\":\"doesNotMatchRegExIgnoreCase\"\
    ,\"comparator\":\"(swim).*?\"}],\n  \"or_table_two\":[{\"entry\":\"university\"\
    ,\"method\":\"doesNotMatchRegExIgnoreCase\",\"comparator\":\"(man).*?\"}],\n \
    \ \"or_table_three\":[{\"entry\":\"name\",\"method\":\"doesNotMatchRegExIgnoreCase\"\
    ,\"comparator\":\"(mar).*?\"}],\n  \"returnIfTrue\":\"true\",\n  \"arrayTarget\"\
    :[\n   {\"arrayEndpoint\":\"arrayOne\"},\n   {\"arrayEndpoint\":\"arrayTwo\"}\n\
    \  ],\"returnIfFalse\":\"false\",\"gtmEventId\":1,\n  dataLayer: {\n    arrayOne:\
    \ [\n     {\n       arrayTwo: [\n        {name: \"Joe\", age: \"20\", hobby: \"\
    gym\", university: \"Manchester\"}, \n        {name: \"Jim\", age: \"21\", hobby:\
    \ \"crafts\", university: \"Manchester\"}\n       ],\n      objectTwo: false\n\
    \     },\n     {\n      arrayTwo: [\n       {name: \"Mary\",age: \"40\", hobby:\
    \ \"swimming\", university: \"Manchester\"}, \n       {name: \"Josie\", age: \"\
    24\", hobby: \"climbing\", university: \"Liverpool\"}\n      ],\n      objectTwo:\
    \ true\n     },\n     {\n      arrayTwo: [\n       {name: \"Elizabeth\",age: \"\
    19\", hobby: \"Pottery\", university: \"Liverpool\"}, \n       {name: \"Sandra\"\
    , age: \"32\", hobby: \"Waterpolo\", university: \"Liverpool\"}\n      ],\n  \
    \    objectTwo: true\n     },\n     {\n      arrayTwo: [\n       {name: \"Angeline\"\
    ,age: \"39\", hobby: \"Waterpolo\", university: \"Manchester\"}, \n       {name:\
    \ \"Aoife\", age: \"24\", hobby: \"climbing\", university: \"Liverpool\"}\n  \
    \    ],\n      objectTwo: true\n     }\n   ]  \n  }\n  \n};\n\n\n// Call runCode\
    \ to run the template's code.\nlet variableResult = runCode(mockData);\n\n// Verify\
    \ that the variable returns a result.\nassertThat(variableResult).hasLength(4);"


___NOTES___

/*** SUBLIMETRIX ***/
Version: 1.0.0
Author: Sublimetrix
Date: 2019.10.09
/*******************/

Change Log:
1.0.0: Initial Version
1.1.0: Default value
1.1.1: Fix boolean issue + remove log requirement
1.1.2: Optimization
1.2.0: Name change
1.2.1: Fix on "contains" & "does not contains" comparators


