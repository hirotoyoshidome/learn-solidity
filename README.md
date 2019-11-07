# install

* install geth

```
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt update
sudo apt install -y ethereum
geth --help
```

* create private net

```
mkdir ethernet
cd ethernet
geth --dev --datadir .
```

* attach geth & create user

```
cd ethernet
geth attach ipc:geth.ipc
personal.newAccount()
// verify and unlock
eth.accounts
eth.coinbase
personal.unlockAccount(eth.accounts[1])
```

* start mining

```
miner.start()
```

* check

```
eth.blockNumber
eth.mining
eth.hashrate
eth.getBlock(0)
eth.getBlock(1)
eth.getBalance(eth.accounts[0])
eth.getBalance(eth.accounts[1])
```

* send money(create new block and add balance)

```
eth.sendTransaction({from:eth.accounts[0], to:eth.accounts[1], value:"1"})
// check
eth.getBlock(1)
eth.getBalance(eth.accounts[1])
eth.getTransaction("{transaction hash}")
```

* install solidity

```
sudo apt install -y solc
solc --version
```

* exec 

```
solc --bin --abi hello.sol
```
⇒　`--bin` is create binary code , `--abi` is create contract's interface info

* deploy
on private net console

```
bin = "0x{binary code}"
abi = {contract's interface info}(JSON)
```

* create contract objent and register transaction

```
contract = eth.contract(abi)
HelloWorld = contract.new({from:eth.accounts[0], data:bin, gas:1000000})
```

* exec

```
HelloWorld
miner.start()
// check
HelloWorld
HelloWorld.getMessage.call()
```
