# Array Objects - And Or Validations - Datalayer Driven

This variable template allows access and comparison in objects in arrays or arrays within arrays.
The objects can either be returned when conditions are matched or a pre-defined response can be returned. The tests have passed accessing objects nested at 3 Arrays deep.

## Set Up

To access the nested arrays, you need to set permissions in the template: [copyFromDataLayer](https://developers.google.com/tag-manager/templates/api#copyfromdatalayer)

![dataLayerPermissions](https://github.com/gtm-templates-AndySN/array-object-and-or-dataLayerDriven/blob/main/readme/readFromDataLayerExample.png?raw=true)

## Usage

### Example DataLayer True/False Return
Consider the objects "arrayTwo" in the following variable:

```
var dataLayer = {
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
```

To access all the arrayTwo objects in the above and check if an object contains the name "joe" and also is of age "20" the following template will return true. To access the objects, the Array Endpoints must each have a javascript path which is an array. Each row signifies object paths within Arrays.

![Deep Array 3 Object Depth - True.js](https://github.com/gtm-templates-AndySN/array-object-and-or-dataLayerDriven/blob/main/readme/exampleTemplate_DeepArray3ObjectDepth-True.png?raw=true)

### Example DataLayer Object Return
Consider the objects "arrayTwo" in the following variable:

```
var dataLayer: {
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
```

The template can return all the objects that match conditions:

#### Get the objects where the university is "manchester" (ignore case) and the hobby is either "swimming" (exact match) or "waterpolo" (ignore case):

![Simple Nested Array - object Return length 2](https://github.com/gtm-templates-AndySN/array-object-and-or-dataLayerDriven/blob/main/readme/Simple%20Nested%20Array%20-%20object%20Return%20length%202.png?raw=true)

Returns the following variable:

```
[
{"name":"Mary","age":"40","hobby":"swimming","university":"Manchester"},
{"name":"Angeline","age":"39","hobby":"Waterpolo","university":"Manchester"}
]
```

### Query optimisation

To resolve the variables quickly, you can include the dataLayer event name where the variable should attempt to resolve with an output

### Complex Queries

The examples here are simplified, the comparison logic includes:

- equals
- contains
- starts with
- ends with
- matches RegEx
- matches RegEx (ignore case)
- does not equal
- does not contain
- does not start with
- does not end with
- does not match RegEx
- does not match RegEx (ignore case)
- less than
- less than or equal to
- greater than
- greater than or equal to
- equalsIgnoreCase

Aside from  equalsIgnoreCase this is the same logic as used in this template by [sublimetrix](https://github.com/sublimetrix): [If Else If - Advanced Lookup Table](https://tagmanager.google.com/gallery/#/owners/sublimetrix/templates/gtm-template-ifelseif)


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[Apache license 2.0](https://github.com/gtm-templates-AndySN/array-object-and-or-dataLayerDriven/blob/main/LICENSE)