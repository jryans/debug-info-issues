#! /usr/bin/env node

const childProcess = require("child_process");
const fs = require("fs");
const path = require("path");
const process = require("process");

console.log("# Reproducing Table 3: “Details of existing issues explored”...\n");

const dirs = [
];

const total = dirs.length;
let issuesDetectable = 0;
let issueDetectionFailed = [];
let fixesVerifiable = 0;
let fixVerificationFailed = [];

console.log(`Total issues to reproduce: ${total}\n`);

for (const dir of dirs) {
  const dirPath = path.join(__dirname, "../..", dir);
  const issuePath = path.join(dirPath, "issue.json");
  const issue = JSON.parse(fs.readFileSync(issuePath));
  console.log(`## Issue ${issue.id}: ${issue.summary}\n`);

  console.log(`Issue detectable: ${issue.issueDetectable}`);
  if (issue.issueDetectable) issuesDetectable++;
  console.log(`Fix verifiable: ${issue.fixVerifiable}`);
  if (issue.fixVerifiable) fixesVerifiable++;

  console.log("Reproducing…");

  let error = null;
  try {
    childProcess.execSync(`'${path.join(dirPath, "reproduce.sh")}'`, {
      cwd: dirPath,
      shell: process.env.SHELL,
      timeout: 5 * 60 * 1000, // 5 mins
    });
  } catch (e) {
    error = e;
  }
  if (error) {
    console.log("…failed");
    if (issue.issueDetectable) issueDetectionFailed.push(issue);
    if (issue.fixVerifiable) fixVerificationFailed.push(issue);
    console.log();
    continue;
  }

  console.log("…succeeded");

  if (issue.issueDetectable) {
    console.log("Detecting issue…");

    let error = null;
    try {
      childProcess.execFileSync("grep", [
        issue.issueDetector,
        path.join(dirPath, "check-issue.md"),
      ], {
        cwd: dirPath,
        timeout: 30 * 1000, // 30 secs
      });
    } catch (e) {
      error = e;
    }
    if (error) {
      console.log("…failed");
      issueDetectionFailed.push(issue);
    } else {
      console.log("…succeeded");
    }
  }

  if (issue.fixVerifiable) {
    console.log("Verifying fix…");

    let error = null;
    try {
      childProcess.execFileSync("grep", [
        issue.fixVerifier,
        path.join(dirPath, "check-fix.md"),
      ], {
        cwd: dirPath,
        timeout: 30 * 1000, // 30 secs
      });
    } catch (e) {
      error = e;
    }
    if (error) {
      console.log("…failed");
      fixVerificationFailed.push(issue);
    } else {
      console.log("…succeeded");
    }
  }

  console.log();
}

console.log("# Summary\n");

console.log(`Total issues attempted to reproduce: ${total}`);

console.log(
  "Issues detected: " +
  (issuesDetectable - issueDetectionFailed.length) +
  " out of " +
  issuesDetectable
);
if (issueDetectionFailed.length) {
  for (const issue of issueDetectionFailed) {
    console.log(`  Issue detection failed for ${issue.id}`)
  }
}

console.log(
  "Fixes verified: " +
  (fixesVerifiable - fixVerificationFailed.length) +
  " out of " +
  fixesVerifiable
);
if (fixVerificationFailed.length) {
  for (const issue of fixVerificationFailed) {
    console.log(`  Fix verification failed for ${issue.id}`)
  }
}

if (issueDetectionFailed.length == 0 && fixVerificationFailed.length == 0) {
  console.log("Reproduction succeeded! 🎉")
} else {
  console.log("Reproduction failed… 😓")
}
