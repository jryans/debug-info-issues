#! /usr/bin/env node

const fs = require("fs");

const inputPath = process.argv[2];
if (!inputPath) {
  throw new Error("Input file required");
}

let data = fs.readFileSync(inputPath, "utf8");

const matches = [...data.matchAll(/Node(0x[0-9a-f]+)/g)];

let counter = 0;
const nodeAddrToId = new Map();

for (const match of matches) {
  const addr = match[1];
  if (nodeAddrToId.has(addr))
    continue;
  nodeAddrToId.set(addr, counter++);
}

for (const [addr, id] of nodeAddrToId) {
  data = data.replaceAll(addr, id);
}

fs.writeFileSync(inputPath, data);
