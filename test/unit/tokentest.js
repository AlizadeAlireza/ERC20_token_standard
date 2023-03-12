const { ethers, network } = require("hardhat")
const { ether, assert, expect } = require("chai")
const {
    developmentChain,
    networkConfig,
} = require("../../helper-hardhat-config")

describe("ERC20 Tests", function () {
    let tokenFactory, deployer, user
    beforeEach(async function () {
        const accounts = await ethers.getSigners()
        deployer = accounts[0]
        user = accounts[1]
        await deployments.fixture(["all"])
        tokenFactoryContract = await ethers.getContractAt("ManualToken")
    })
})
