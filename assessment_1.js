// This is an object constructor for our nfts
function New_NFT (brand, standard, name, rating) {
    this.brand = brand;
    this.standard = standard;
    this.name = name;
    this.rating = rating;
}

var nft_storage = []; // This array will store the objects

// This function will create a new object and make it a part of the nft_storage
function mintNFT (brand, standard, name, rating) {
    var nft = new New_NFT(brand, standard, name, rating);
    nft_storage.push(nft);
}

// This function will get the details of our stored nfts.
function listNFTs () {
    console.log("NFT details are listed below:\n");

    for (var i=0; i < nft_storage.length; i++){
        console.log("NFT " + (i+1) + "\n");
        console.log("Details:");
        console.log("Brand: " + (nft_storage[i].brand));
        console.log("Standard: " + (nft_storage[i].standard));
        console.log("Name: " + (nft_storage[i].name));
        console.log("Rating: " + (nft_storage[i].rating));
        console.log("\n");
    }
}

function getTotalSupply() {
    var total_supply = nft_storage.length;
    console.log("Total minted nfts are: " + (total_supply));
}

mintNFT("Mercedes", "S", "G WAGON", 4.7);
mintNFT("Toyota", "A", "SUPRA", 4.9);
mintNFT("Dodge", "A", "Challenger",4.2);

listNFTs();
getTotalSupply();
