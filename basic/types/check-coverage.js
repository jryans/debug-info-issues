#! /usr/bin/env node

const fs = require("fs");
const path = require("path");

const dirPath = process.argv[2];
console.log(dirPath);

if (!dirPath) {
  throw new Error("Directory required");
}

const section = path.basename(dirPath);

const stats = fs.readFileSync(path.join(dirPath, "run.istats"), "utf8");
const lines = stats.split("\n");

console.log(`Coverage for ${section}`);
let sectionFound = false;
let coverageSummary = true;
for (const line of lines) {
  if (sectionFound) {
    // End of section
    if (line.startsWith("fn=") || line == "") {
      break;
    }
    // Examine cells of interest
    const [asmLine, srcLine, coveredStr] = line.split(" ");
    const covered = coveredStr == "1";
    coverageSummary &= covered;
    if (!covered) {
      console.log(`Asm line ${asmLine}, src line ${srcLine} not covered`);
    }
  }
  // Look for section of interest
  if (line == `fn=${section}`) {
    sectionFound = true;
  }
}

if (!sectionFound) {
  console.log("No coverage data found!");
}

if (coverageSummary) {
  console.log("All lines covered")
}
