const { ethers } = require("hardhat");

var owner = 0x7a08b09371aDb3d04305f629B7d083584c7Ee34f;

async function main(){
  const Delegate = await ethers.getContractFactory("Delegate");
  const delegate = await Delegate.deploy(owner);
  await delegate.deployed();

  const Delegation = await ethers.getContractFactory("Delegation");
  const delegation = await Delegation.deploy(delegate.address);
  await delegation.deployed();
}

main();