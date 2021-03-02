type delegator = address;
type delegatorRecord = {
    balance: nat,
    stakingStart: nat,
};

type getBalanceParameter = 
[@layout:comb]
{
    owner: address,
    callback: contract(nat),
};

type getBalanceResponse = nat;

type transferParameter = 
[@layout:comb]
{
    [@annot:from] from_: address,
    [@annot:to] to_: address,
    value: nat,
};

type updatePoolAction = Skip | UpdateBlock | UpdateRewards;
