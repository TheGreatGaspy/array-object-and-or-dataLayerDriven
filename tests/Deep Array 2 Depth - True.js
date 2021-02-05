const mockData = {
  testing: true,
  "returnOptions":"manual",
  "or_table_two":[{"entry":"name","method":"equals","comparator":"joe"}],"or_table_one":[{"entry":"age","method":"equals","comparator":"20"}],"returnIfTrue":"true","arrayTarget":[{"arrayEndpoint":"testing.arrayOne"},{"arrayEndpoint":"objectOne.arrayTwo"}],"returnIfFalse":"false","gtmEventId":1,
  dataLayer: {
    "testing": {
      "arrayOne": [
        {
          "objectOne": {
           "arrayTwo": [
             {"name": "joe", "age": "20"}, 
             {"name": "jim", "age": "20"}
           ]
         }, 
         "objectTwo": false
        },
        {"objectOne": {"arrayTwo": [
          {"name": "Mary"," age": "40"}, {"name": "Josie", "age": "24"}
        ]}, objectTwo: true}
      ]
    }
  }
};


// Call runCode to run the template's code.
let variableResult = runCode(mockData);

// Verify that the variable returns a result.
assertThat(variableResult).isEqualTo("true");