// let arr = [ [-1, -1, 0, -9, -2, -2],
// [-2, -1, -6, -8, -2, -5],
// [-1, -1, -1, -2, -3, -4],
// [-1, -9, -2, -4, -4, -5],
// [-7, -3, -3, -2, -9, -9],
// [-1, -3, -1, -2, -4, -5]];

let arr = [[-1, 1, -1, 0, 0, 0],
[0, -1, 0, 0, 0, 0],
[-1, -1, -1, 0, 0, 0],
[0, -9, 2, -4, -4, 0],
[-7, 0, 0, -2, 0, 0],
[0, 0, -1, -2, -4, 0]];

function main() {
    let greatest;
    let hourglass;
    for(let row = 0; row < arr.length - 2; row++){
        for(let col = 0; col < arr[row].length - 2; col++){
            let bottom = row + 2;
            let stem = row + 1;
            let right = col + 2;
            let mid = col + 1;
            hourglass = arr[row][col] + arr[row][mid] + arr[row][right] + arr[stem][mid] + arr[bottom][col] + arr[bottom][mid] + arr[bottom][right];
            if (greatest || greatest === 0) {
              if (hourglass > greatest){
                greatest = hourglass;
              }
            } else {
              greatest = hourglass;
            }
        }
    }
    console.log(greatest);
}

main();
