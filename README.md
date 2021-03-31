# temp

terminal 1:

```shell
cd inter_call

sudo dfx start --clean
```

terminal 2:
```shell
dfx canister create --all
Creating canister "callee"...
Creating the canister using the wallet canister...
Creating a wallet canister on the local network.
The wallet canister on the "local" network for user "default" is "rwlgt-iiaaa-aaaaa-aaaaa-cai"
"callee" canister created with canister id: "rrkah-fqaaa-aaaaa-aaaaq-cai"
Creating canister "caller"...
Creating the canister using the wallet canister...
"caller" canister created with canister id: "ryjl3-tyaaa-aaaaa-aaaba-cai"
Creating canister "maker"...
Creating the canister using the wallet canister...
"maker" canister created with canister id: "r7inp-6aaaa-aaaaa-aaabq-cai"

sudo dfx build --all
Building canisters...

sudo dfx canister install callee
Installing code for canister callee, with canister_id rrkah-fqaaa-aaaaa-aaaaq-cai

# use the canister id of callee
eval dfx canister install caller --argument '"(principal \"rrkah-fqaaa-aaaaa-aaaaq-cai\")"'
Installing code for canister caller, with canister_id ryjl3-tyaaa-aaaaa-aaaba-cai

sudo dfx canister install maker
Installing code for canister maker, with canister_id r7inp-6aaaa-aaaaa-aaabq-cai

dfx canister call callee get
(1)

dfx canister call callee add1
(2)

dfx canister call caller get
(2)

dfx canister call caller add1
(3)

eval dfx canister call maker newCaller '"(principal \"rrkah-fqaaa-aaaaa-aaaaq-cai\")"'
(principal "rkp4c-7iaaa-aaaaa-aaaca-cai")

dfx canister call maker getcallers
(vec { principal "rkp4c-7iaaa-aaaaa-aaaca-cai" })

dfx canister call "rkp4c-7iaaa-aaaaa-aaaca-cai" get
(3)

dfx canister call "rkp4c-7iaaa-aaaaa-aaaca-cai" add1
(4)

dfx canister call callee get
(4)
```