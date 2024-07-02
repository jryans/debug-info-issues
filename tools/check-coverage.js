#! /usr/bin/env node

const fs = require("fs");
const path = require("path");

function checkFunctionCoverage(functionPath) {
  const section = path.basename(functionPath);
  console.log(`## Coverage for \`${section}\``);
  console.log();

  const warningsSize = fs.statSync(path.join(functionPath, "warnings.txt")).size;
  if (warningsSize) {
    console.log("Warnings present, coverage may be invalid!");
  }

  const statsLines = fs.readFileSync(path.join(functionPath, "run.istats"), "utf8")
    .split("\n");

  let sectionFound = false;
  let sectionLines = 0;
  let sectionLinesCovered = 0;

  for (const line of statsLines) {
    if (sectionFound) {
      // End of section
      if (line.startsWith("fn=") || line.startsWith("fl=") || line == "") {
        break;
      }
      if (line.includes("=")) {
        throw new Error("Unexpected line: " + line);
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
  console.log(`${sectionLinesCovered} / ${sectionLines} (${percent}%) asm lines covered`);
  console.log();

  return { sectionLines, sectionLinesCovered };
}

const baseDirPath = process.argv[2];

if (!baseDirPath) {
  throw new Error("Directory required");
}

let totalLines = 0;
let totalLinesCovered = 0;

const baseDir = fs.opendirSync(baseDirPath);
for (let dir = baseDir.readSync(); dir; dir = baseDir.readSync()) {
  if (!dir.isDirectory()) continue;
  const functionPath = path.join(baseDirPath, dir.name);
  const { sectionLines, sectionLinesCovered } =
    checkFunctionCoverage(functionPath);
  totalLines += sectionLines;
  totalLinesCovered += sectionLinesCovered;
}

console.log("## Summary")
console.log()

const percent = totalLinesCovered / totalLines * 100;
console.log(`${totalLinesCovered} / ${totalLines} (${percent}%) asm lines covered`);
