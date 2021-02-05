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