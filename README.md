# OpenZeppelin Ethernaut Level 6

`Delegation.sol` is the contract with the `fallback()` which accepts low level interactions.

We can simple move to [Remix-IDE](https://remix.ethereum.org/) and move our code their.

At bottom left, you shall see `Low level interations` tab which is asking for `calldata`. It certainly takes only hex values.

If we call `pwn()` of `Delegate.sol`, easilty we can become the owner. 

We just have to convert `pwn()` to hex value which we did using [this](https://string-functions.com/string-hex.aspx)

Result : `dd365b8b`, input in calldata field and click on Transact.

That's not it, we have to increase the gas from `Edit` option in Metamask popup. If you don't see then turn it on to set gas manually from `Advanced Settings`.

Increase the gas so it can do multiple external calls and that's it! 

