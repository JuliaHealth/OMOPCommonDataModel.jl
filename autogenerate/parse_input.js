const fs = require('fs');

const vm = require('vm');

const code = fs.readFileSync('data/input.js', 'utf8');

vm.runInThisContext(code);

const convertObject = (obj, visited = new Set()) => {
  if (obj && typeof obj === 'object') {
    // Check if this object has already been visited (to prevent circular references)
    if (visited.has(obj)) {
      return; // Skip circular reference
    }
    visited.add(obj); // Mark this object as visited

    let newObj = {};

    for (let key in obj) {
      if (Array.isArray(obj[key])) {
        newObj[key] = obj[key].map((item) => (typeof item === 'object' ? convertObject(item, visited) : item));
      } else if (typeof obj[key] === 'object' && obj[key] !== null) {
        newObj[key] = convertObject(obj[key], visited); // Recurse for nested objects
      } else {
        newObj[key] = obj[key]; // Copy primitive values
      }
    }
    return newObj;
  }
  return obj; // For non-objects (primitives), return the value
};

let cleaned_interfaces = [];
for (let i = 0; i < com.qmino.miredot.restApiSource.interfaces.length; i++) {
  cleaned_interfaces.push(convertObject(com.qmino.miredot.restApiSource.interfaces[i])); // Apply conversion for each object
}

fs.writeFileSync('data/endpoints.json', JSON.stringify(cleaned_interfaces, null, 2));

