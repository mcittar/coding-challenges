function main(mealCost, tipPercent, taxPercent){
  // Write your code here
    let tip = (mealCost * (tipPercent / 100));
    console.log(tip);
    let tax = (mealCost * (taxPercent / 100));
    console.log(tax);
    let total = mealCost + parseFloat(tip) + parseFloat(tax);
    console.log(Math.round(mealCost + tip + tax));
    // Use console.log() to print to stdout
    console.log(`The total meal cost is ${Math.round(total)} dollars.`);
}

main(10.25, 17, 5);
