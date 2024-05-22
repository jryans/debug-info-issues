#! /usr/bin/env node

const fs = require("fs");
const path = require("path");

const dirPath = process.argv[2];
console.log(dirPath);

if (!dirPath) {
  throw new Error("Directory required");
}

const section = path.basename(dirPath);

console.log(`Coverage for ${section}`);

const warningsSize = fs.statSync(path.join(dirPath, "warnings.txt")).size;
if (warningsSize) {
  console.log("Warnings present, coverage may be invalid!");
}

const traceLines = fs.readFileSync(path.join(dirPath, "execution.txt"), "utf8")
                     .split("\n");

for (const line of traceLines) {
  if (line.startsWith("Resolving symbolic")) {
    console.log("Symbolic resolution found, coverage may be invalid!");
    break;
  }
}

const statsLines = fs.readFileSync(path.join(dirPath, "run.istats"), "utf8")
                     .split("\n");

let sectionFound = false;
let sectionLines = 0;
let sectionLinesCovered = 0;

for (const line of statsLines) {
  if (sectionFound) {
    // End of section
    if (line.startsWith("fn=") || line == "") {
      break;
    }
    // Examine cells of interest
    const [asmLine, srcLine, coveredStr] = line.split(" ");
    const covered = coveredStr == "1";
    sectionLines++;
    if (covered) {
      sectionLinesCovered++;
    } else {
      console.log(`Asm line ${asmLine}, src line ${srcLine} not covered`);
    }
  }
  // Look for section of interest
  if (line == `fn=${section}`) {
    sectionFound = true;
  }
}

if (!sectionFound || !sectionLines) {
  console.log("No coverage data found!");
}

const percent = sectionLinesCovered / sectionLines * 100;
console.log(`${sectionLinesCovered} / ${sectionLines} (${percent}%) asm lines covered`)
