# Smart Contract Sandbox
**AngularJs** front-end for **truffle** and **testrpc**

**Prerequisites** global
	
	- node/npm
	- truffle
	- testrpc


**Deploy** contract
	
	var deployed = decypher.deployContract("<CONTRACTNAME>")
	

**Send transaction** to contract
	
	deployed.sendEth.sendTransaction({
		from: acct2, 
		to: contract,
		value: web3.toWei(5,'ether'), 
		gasCost: 21000, 
		gasPrice:20000000000 
	})


**Get balance** of contract
	
	decypher.etherBalance(acct1)
