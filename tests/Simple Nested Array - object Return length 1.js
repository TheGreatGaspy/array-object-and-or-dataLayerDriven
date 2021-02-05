const mockData = {
  testing: true,
  "returnOptions":"object",
  "or_table_two":[{"entry":"university","method":"equalsIgnoreCase","comparator":"manchester"}],
  "or_table_one":[{"entry":"hobby","method":"equals","comparator":"swimming"},{"entry":"hobby","method":"equalsIgnoreCase","comparator":"waterpolo"}],
  "or_table_three":[{"entry":"age","method":"equals","comparator":"40"}],
  "returnIfTrue":"true",
  "arrayTarget":[
   {"arrayEndpoint":"arrayOne"},
   {"arrayEndpoint":"arrayTwo"}
  ],"returnIfFalse":"false","gtmEventId":1,
  dataLayer: {
    arrayOne: [
     {
       arrayTwo: [
        {name: "Joe", age: "20", hobby: "gym", university: "Manchester"}, 
        {name: "Jim", age: "21", hobby: "crafts", university: "Manchester"}
       ],
      objectTwo: false
     },
     {
      arrayTwo: [
       {name: "Mary",age: "40", hobby: "swimming", university: "Manchester"}, 
       {name: "Josie", age: "24", hobby: "climbing", university: "Liverpool"}
      ],
      objectTwo: true
     },
     {
      arrayTwo: [
       {name: "Elizabeth",age: "19", hobby: "Pottery", university: "Liverpool"}, 
       {name: "Sandra", age: "32", hobby: "Waterpolo", university: "Liverpool"}
      ],
      objectTwo: true
     },
     {
      arrayTwo: [
       {name: "Angeline",age: "39", hobby: "Waterpolo", university: "Manchester"}, 
       {name: "Aoife", age: "24", hobby: "climbing", university: "Liverpool"}
      ],
      objectTwo: true
     }
   ]  
  }
  
};


// Call runCode to run the template's code.
let variableResult = runCode(mockData);

// Verify that the variable returns a result.
assertThat(variableResult).hasLength(1);