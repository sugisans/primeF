"use strict";

const keypress = require('keypress');
var n = parseInt(process.argv[2]);
if (!process.argv[2]) {
    console.log("自然数を入力してください");
    keypress(process.stdin);
    process.stdin.resume();
    process.stdin.setEncoding('utf8');
    process.stdin.on('data', function(chunk) {
        n = chunk;
    });
    process.stdin.on('keypress', function(key) {
        prime(n);
        process.exit(0);
    });
}
if (n <= 2) {
    console.log("引数は2より大きい数値にしてください:");
    process.exit(0);
}

prime(n);

function prime(n) {
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
}
