function isBalanced(string){
  let stack = [];
  for(let i = 0; i < string.length; i++){
    if (string[i] === "{") {
      stack.push("}");
    } else if (string[i] === "["){
      stack.push("]");
    } else if (string[i] === "("){
      stack.push(")");
    } else {
      if (stack.length === 0 || string[i] !== stack[stack.length - 1]){
        return false;
      }
      stack.pop();
    }
  }
  return stack.length === 0;
}

console.log(isBalanced("{[()]}"));
console.log(isBalanced("{[(])}"));
console.log(isBalanced("{{[[(())]]}}"));
