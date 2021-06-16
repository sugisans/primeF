"use strict";

let n = parseInt(process.argv[2]);
if (n <= 2) {
    console.log("引数は2より大きい数値にしてください:");
    process.exit(0);
}

for (let i = 2; i < n;) {
    if ((n % i) === 0) {
        n = n / i;
        console.log(i);
    } else {
        i++;
    }
    if (n === i) {
        console.log(i);
        break;
    }
}