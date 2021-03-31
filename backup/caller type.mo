// 能够被编译调用，并且能够被 Maker 创建。
import Principal "mo:base/Principal";
import Callee "./callee";

actor class Caller(_callee: Principal) {

    private var calleeHandler : actor {
        add1: () -> async Nat;
        get: query () -> async Nat;
    } = actor(Principal.toText(_callee));

    public func add1() : async Nat {
        await calleeHandler.add1()
    };

    public func get() : async Nat {
        await calleeHandler.get()
    };
};