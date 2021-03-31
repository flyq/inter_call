import Array "mo:base/Array";
import Principal "mo:base/Principal";
import Caller "./caller";

actor class Maker() {
    private stable var callers : [Principal] = [];

    public func newCaller(callee: Principal) : async Principal {
        let callerActor = await Caller.Caller(callee);
        let callerId = Principal.fromActor(callerActor);
        callers := Array.append<Principal>(callers, [callerId]);

        callerId
    };

    public query func getcallers() : async [Principal] {
        callers
    };
};
