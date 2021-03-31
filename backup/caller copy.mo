// 能够编译调用，但是无法被 maker 创建，因为 maker 无法编译
import Principal "mo:base/Principal";
import Callee "./callee";

actor class Caller(_callee: Principal) {
    public type CalleeActor = actor {
        add1: () -> async Nat;
        get: query () -> async Nat;
    };

    private var calleeHandler : CalleeActor = actor(Principal.toText(_callee));

    public func add1() : async Nat {
        await calleeHandler.add1()
    };

    public func get() : async Nat {
        await calleeHandler.get()
    };
};