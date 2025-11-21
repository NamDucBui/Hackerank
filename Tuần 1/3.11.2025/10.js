'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

function timeConversion(s) {
    // Write your code here
    const a = s.slice(-2);
    let [hour, minute, second] = s.slice(0, -2).split(':');
    
    hour = parseInt(hour, 10);
    
    if (a === "AM"){
        if(hour === 12){
            hour = '00';
        }
        else{
            hour = hour.toString().padStart(2, '0');
        }
    }
    else{
        if (hour !== 12){
            hour += 12;
        }
        hour = hour.toString();
    }
    
    return `${hour}:${minute}:${second}`;
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const s = readLine();

    const result = timeConversion(s);

    ws.write(result + '\n');

    ws.end();
}
