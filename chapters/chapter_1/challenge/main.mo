import Buffer "mo:base/Buffer";

actor {

    let name1 : Text = "My Bootcamp";
    var manifestation : Text = "Web3 + motoko";
    var challenge : Buffer.Buffer<Text> = Buffer.Buffer<Text>(10);

    public shared query func getName1() : async Text {
        return name1;
    };

    public shared query func getManifestation() : async Text {
        return manifestation;
    };

    public func setManifesto(newManifestation : Text) : async () {
        manifestation := newManifestation;
        return;
    };

    public func addChallenge(newChallenge : Text) : async () {
        challenge.add(newChallenge);
        return;
    };

    public shared query func getChallenge() : async [Text] {
        return Buffer.toArray(challenge);
    };
};