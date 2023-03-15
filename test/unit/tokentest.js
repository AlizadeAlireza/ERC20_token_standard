const { ethers, network } = require("hardhat")
const { ether, assert, expect } = require("chai")
const {
    developmentChain,
    networkConfig,
} = require("../../helper-hardhat-config")

describe("ERC20 Tests", function () {
    let tokenContract, ourToken, deployer, spender
    const totalSupply = 1000 * 10 ** 18
    beforeEach(async function () {
        const accounts = await ethers.getSigners()
        deployer = accounts[0]
        spender = accounts[1]
        await deployments.fixture(["all"])
        tokenFactoryContract = await ethers.getContractAt("ManualToken")
        ourTokenFactory = await ethers.getContractAt("OurToken")

        tokenContract = await tokenFactoryContract.connect(deployer)
        ourToken = await tokenContract.connect(deployer)

        ourToken.deploy()
    })

    describe("Tests for approve function", () => {
        it("test approve", async () => {
            AMOUNT = 10 ** 19
            await token.approve(spender, AMOUNT)
            assert(token.allowance[deployer][spender].toString() == AMOUNT)
        })
    })
})
