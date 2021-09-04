
import '@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

contract Loot is ERC721Enumerable, ReentrancyGuard, Ownable {

        string[] private weapons = [
        "Warhammer",
        "Quarterstaff",
        "Maul",
        "Mace",
        "Club",
        "Katana",
        "Falchion",
        "Scimitar",
        "Long Sword",
        "Short Sword",
        "Ghost Wand",
        "Grave Wand",
        "Bone Wand",
        "Wand",
        "Grimoire",
        "Chronicle",
        "Tome",
        "Book",
        "Knife",
        "Shuriken",
        "Crossbow",
        "Scythe",
        "Greatsword",
        "Tooth",
        "Shortbow",
        "Rod",
        "Claw",
        "Staff",
        "Blade",
        "Flail",
        "Wings",
        "Wand",
        "Chakram",
        "Chain",
        "Fang",
        "Dagger"
    ];
    
    string[] private rings = [
        "Ring"
    ];
    
    string[] private flasks = [
        "Flask"
    ];
    
    string[] private chests = [
        "Robe",
        "Shirt",
        "Armor",
        "Chestplate",
        "Mail"
    ];
    
    string[] private heads = [
        "Helm",
        "Cap",
        "Crown",
        "Hood",
        "Helm"
    ];
    
    string[] private waists = [
        "Belt",
        "Sash"
    ];
    
    string[] private foots = [
        "Greaves",
        "Boots",
        "Slippers",
        "Shoes"
    ];
    
    string[] private hands = [
        "Gauntlets",
        "Gloves"
    ];
    
    string[] private accessory = [
        "Necklace",
        "Amulet",
        "Pendant",
        "Bracelets",
        "Earings",
        "Talisman",
        "Ward",
        "Orb"
    ];
    
    string[] private materials = [
        "Gold",
        "Silver",
        "Bronze",
        "Platinum",
        "Titanium",
        "Ether",
        "Emerald",
        "Diamond",
        "Chaos",
        "Sapphire",
        "Topaze",
        "Ruby",
        "Moonstone",
        "Lapis"
    ];
    
    string[] private prefixesClothes = [
        "Silk",
        "Ornate",
        "Divine",
        "Demon",
        "Leather",
        "Ancient",
        "Chain",
        "Plate",
        "Evil"
    ];     
    string[] private sizes = [
        "Small",
        "Medium",
        "Large",
        "Divine",
        "Eternal"
    ];
    string[] private flasksSuffixes = [
        "of Life",
        "of Mana",
        "of Poison",
        "of Fatigue",
        "of Chaos",
        "of Haste",
        "of Knowledge",
        "of Chaos",
        "of Bliss"
    ];
    
    string[] private suffixes = [
        "of Power",
        "of Giants",
        "of Titans",
        "of Skill",
        "of Perfection",
        "of Brilliance",
        "of Enlightenment",
        "of Protection",
        "of Anger",
        "of Rage",
        "of Fury",
        "of Vitriol",
        "of the Fox",
        "of Detection",
        "of Reflection",
        "of the Twins",
        "of Death",
        "of True Sight",
        "of Purification",
        "of the Wanderer",
        "of Harmony",
        "of the Divine",
        "of the Devout",
        "of the Prophet",
        "of Shadow",
        "of Horror",
        "of the Blessed",
        "of Victory",
        "of Pain",
        "of Blood",
        "of Confusion",
        "of Fortune",
        "of Evil",
        "of Decrepitude",
        "of the Viper",
        "of the Abyss",
        "of Grace",
        "of Tyranny",
        "of Wrath",
        "of Corruption"
    ];
        string[] private jobs = [
		"Animal Handler",
		"Arborist",
		"Beekeeper",
		"Birdcatcher",
		"Cowherd",
		"Falconer",
		"Farmer",
		"Fisher",
		"Forager",
		"Gamekeeper",
		"Groom",
		"Herder",
		"Horse Trainer",
		"Hunter",
		"Master-of-Hounds",
		"Miller",
		"Prospector",
		"Ranger",
		"Renderer",
		"Shepherd",
		"Stablehand",
		"Thresher",
		"Trapper",
		"Vintner",
		"Woodcutter",
		"Zookeeper",
		"Architect",
		"Brickmason",
		"Carpenter",
		"Claymason",
		"Plasterer",
		"Roofer",
		"Stonemason",
		"Streetlayer",
		"Acrobat",
		"Actor",
		"Chef",
		"Dancer",
		"Gladiator",
		"Glasspainter",
		"Jester",
		"Illuminator",
		"Minstrel",
		"Musician",
		"Painter",
		"Piper",
		"Playwright",
		"Poet",
		"Sculptor",
		"Singer",
		"Tattooist",
		"Wrestler",
		"Writer",
		"Accountant",
		"Banker",
		"Brothel Owner",
		"Chandler",
		"Collector",
		"Entrepreneur",
		"Fishmonger",
		"Grocer",
		"Guild Master",
		"Innkeeper",
		"Ironmonger",
		"Merchant",
		"Peddler",
		"Speculator",
		"Street Vendor",
		"Thriftdealer",
		"Courier",
		"Herald",
		"Interpreter",
		"Linguist",
		"Messenger",
		"Town Crier",
		"Translator",
		"Armorer",
		"Blacksmith",
		"Rope-maker",
		"Saddler",
		"Tailor",
		"Soaper",
		"Tanner",
		"Taxidermist",
		"Thatcher",
		"Tinker",
		"Toymaker",
		"Watchmaker",
		"Weaponsmith",
		"Weaver",
		"Wheelwright",
		"Whittler",
		"Woodcarver",
		"Assassin",
		"Bandit",
		"Burglar",
		"Conman",
		"Cockfighter",
		"Crime Boss",
		"Cutpurse",
		"Drug Lord",
		"Fence",
		"Kidnapper",
		"Loan Shark",
		"Outlaw",
		"Pirate",
		"Poacher",
		"Smuggler",
		"Rogue",
		"Anthropologist",
		"Apprentice",
		"Archaeologist",
		"Archivist",
		"Artificer",
		"Astrologer",
		"Botanist",
		"Cartographer",
		"Chemist",
		"Dean",
		"Engineer",
		"Historian",
		"Horologist",
		"Librarian",
		"Mathematician",
		"Philosopher",
		"Professor",
		"Scholar",
		"Scribe",
		"Student",
		"Teacher",
		"Theologian",
		"Tutor",
		"Archduke",
		"Aristocrat",
		"Baron",
		"Chancellor",
		"Chief",
		"Constable",
		"Count",
		"Courtier",
		"Diplomat",
		"Duke",
		"Emperor",
		"Judge",
		"Knight",
		"Lady-in-Waiting",
		"Lawyer",
		"Marquess",
		"Minister",
		"Orator",
		"Prince",
		"Steward",
		"Squire",
		"Tax Collector",
		"Ward",
		"Alchemist",
		"Apothecary",
		"Bloodletter",
		"Doctor",
		"Healer",
		"Herbalist",
		"Midwife",
		"Mortician",
		"Nurse",
		"Physician",
		"Surgeon",
		"Veterinarian",
		"Baker",
		"Barber",
		"Barkeep",
		"Barmaid",
		"Butcher",
		"Charcoal Maker",
		"Chatelaine",
		"Chimney Sweeper",
		"Clerk",
		"Cook",
		"Copyist",
		"Croupier",
		"Distiller",
		"Florist",
		"Gardener",
		"Gongfarmer",
		"Gravedigger",
		"Housemaid",
		"Kitchen Drudge",
		"Laborer",
		"Lamplighter",
		"Landscaper",
		"Laundry Worker",
		"Longshoreman",
		"Miner",
		"Orphanage Caretaker",
		"Prostitute",
		"Street Sweeper",
		"Tavern Worker",
		"Vermin Catcher",
		"Abjurer",
		"Archmage",
		"Augurer",
		"Conjuror",
		"Elementalist",
		"Enchanter",
		"Evoker",
		"Hearth-witch",
		"Illusionist",
		"Mage",
		"Necromancer",
		"Ritualist",
		"Runecaster",
		"Sage",
		"Seer",
		"Shaman",
		"Shapeshifter",
		"Summoner",
		"Wizard",
		"Wordsmith",
		"Admiral",
		"Archer",
		"Bailiff",
		"Bodyguard",
		"Bouncer",
		"Captain",
		"Castellan",
		"Cavalier",
		"City Watch",
		"Detective",
		"Duelist",
		"Executioner",
		"Fireman",
		"Guard",
		"General",
		"Jailer",
		"Man-at-Arms",
		"Marshall",
		"Mercenary",
		"Sapper",
		"Sentinel",
		"Sergeant",
		"Sergeant-at-Arms",
		"Scout",
		"Siege Artillerist",
		"Slave Driver",
		"Soldier",
		"Spearman",
		"Spy",
		"Tactician",
		"Torturer",
		"Warden",
		"Warmage",
		"Acolyte",
		"Archbishop",
		"Bishop",
		"Cardinal",
		"Chaplain",
		"Clergy",
		"Cleric",
		"Cultist",
		"Cult Leader",
		"Diviner",
		"Friar",
		"High Priest",
		"Inquisitor",
		"Missionary",
		"Monk",
		"Nun",
		"Paladin",
		"Pardoner",
		"Priest",
		"Prophet",
		"Sexton",
		"Templar",
		"Boatman",
		"Bosun",
		"Wagoner",
		"Caravaneer",
		"Caravan Guard",
		"Charioteer",
		"Ferryman",
		"First Mate",
		"Helmsman",
		"Navigator",
		"Purser",
		"Sailor",
		"Sea Captain",
		"Shipwright",
		"Swab"
    ];
    
    string[] private origins = [
        "Orphan",
        "Slave",
        "Royalty",
        "Commoner",
        "Farmer",
        "Landlord",
        "Adventurer",
        "Cultist",
        "Refugee",
        "Warrior",
        "Vagabond",
        "Hermit",
        "Beggar",
        "Pilgrim",
        "Heretic",
        "Vagrant",
        "Scholar",
        "Monk"
    ];
    string[] private races = [
        "Human",
        "Dwarf",
        "Elf",
        "Vampire",
        "Undead",
        "Goblin",
        "Demon",
        "Troll",
        "Ork",
        "Catfolk",
        "Angel",
        "Fairy",
        "Halfling",
        "Giant",
        "Lizardfolk",
        "Nymph"
    ];
    string[] private namePrefixes = [
        "Abomination","Agony", "Apocalypse", "Armageddon", "Beast", "Behemoth", "Blight", "Blood", "Bramble", 
        "Brimstone", "Brood", "Carrion", "Cataclysm", "Chimeric", "Corpse", "Corruption", "Damnation", 
        "Death","Devil","Demon", "Dire","Diabolic", "Dragon", "Dread", "Doom", "Dusk", "Eagle", "Empyrean", "Fate", "Foe", 
        "Gale", "Ghoul", "Gloom", "Glyph", "Golem", "Grim", "Hate", "Havoc", "Honour", "Horror", "Hypnotic", 
        "Kraken", "Loath", "Maelstrom", "Mind", "Miracle", "Morbid", "Oblivion", "Onslaught", "Pain", 
        "Pandemonium", "Phoenix", "Plague", "Rage", "Rapture", "Rune", "Skull", "Sol", "Soul", "Sorrow", 
        "Spirit", "Storm", "Tempest", "Torment", "Vengeance", "Victory", "Viper", "Vortex", "Woe", "Wrath",
        "Light's", "Shimmering"  
    ];
    
    string[] private nameSuffixes = [
        "Bane",
        "Root",
        "Bite",
        "Song",
        "Roar",
        "Grasp",
        "Instrument",
        "Glow",
        "Bender",
        "Shadow",
        "Whisper",
        "Shout",
        "Growl",
        "Tear",
        "Peak",
        "Form",
        "Sun",
        "Moon",
        "Blow",
        "Shred"
    ];
    
    function random(string memory input) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(input)));
    }
    
    function getWeapon(uint256 tokenId) public view returns (string memory) {
        return pluck(tokenId, "WEAPON", weapons, suffixes);
    }
    
    function getChest(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "CHEST", chests, suffixes, prefixesClothes);
    }
    
    function getHead(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "HEAD", heads, suffixes, prefixesClothes);
    }
    
    function getWaist(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "WAIST", waists, suffixes, prefixesClothes );
    }

    function getFoot(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "FOOT", foots, suffixes, prefixesClothes);
    }
    
    function getHand(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "HAND", hands, suffixes, prefixesClothes);
    }
    
    function getAccessory(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "ACCESSORY", accessory, suffixes, materials);
    }
    
    function getRing(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "RING", rings, suffixes, materials);
    }
    
    function getFlask(uint256 tokenId) public view returns (string memory) {
        return pluckWithPrefix(tokenId, "FLASK", flasks, flasksSuffixes,sizes);
    }
    
    function getRace(uint256 tokenId) public view returns (string memory) {
        return pluckRace(tokenId, "RACE");
    }
    
    function getJob(uint256 tokenId) public view returns (string memory) {
        return pluckJob(tokenId, "JOB");
    }
    
    function getAge(uint256 tokenId) public view returns (string memory) {
        return pluckAge(tokenId, "AGE");
    }
    
    function pluck(uint256 tokenId, string memory keyPrefix, string[] memory sourceArray, string[] memory suffixesArray) internal view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        string memory output = sourceArray[rand % sourceArray.length];
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            output = string(abi.encodePacked(output, " ", suffixes[rand % suffixesArray.length]));
        }
        if (greatness >= 19) {
            string[2] memory name;
            name[0] = namePrefixes[rand % namePrefixes.length];
            name[1] = nameSuffixes[rand % nameSuffixes.length];
            if (greatness == 19) {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output));
            } else {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output, " (cursed)"));
            }
        }
        return output;
    }
    function pluckWithPrefix(uint256 tokenId, string memory keyPrefix, string[] memory sourceArray, string[] memory suffixesArray,string[] memory prefixes) internal view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        string memory output = sourceArray[rand % sourceArray.length];
        output = string(abi.encodePacked(prefixes[rand % prefixes.length], " ", output, " "));
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            output = string(abi.encodePacked(output, " ", suffixes[rand % suffixesArray.length]));
        }
        if (greatness >= 19) {
            string[2] memory name;
            name[0] = namePrefixes[rand % namePrefixes.length];
            name[1] = nameSuffixes[rand % nameSuffixes.length];
            if (greatness == 19) {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output));
            } else {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output, " (cursed)"));
            }
        }
        return output;
    }

    function pluckAge(uint256 tokenId, string memory keyPrefix) internal view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        string memory output = toString(rand % 99 + 10);
        output = string(abi.encodePacked(output, " Years of Age"));
        return output;
    }
    
    function pluckRace(uint256 tokenId, string memory keyPrefix) internal view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        string memory output = races[rand % races.length];
        uint256 greatness = rand % 21;
		if (greatness == 0) {
            output = string(abi.encodePacked("Undesirable ", output));
        } else if (greatness > 10 && greatness < 14) {
            output = string(abi.encodePacked("Respected ", output));
        } else if (greatness >= 14 && greatness < 18) {
            output = string(abi.encodePacked("Renown ", output));
        } else if (greatness >= 18) {
            if (greatness < 20) {
                output = string(abi.encodePacked("Noble ", output));
            } else {
                output = string(abi.encodePacked("Legendary ", output));
            }
        }
        return output;
    }
    
    function pluckJob(uint256 tokenId, string memory keyPrefix) internal view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        string memory output = jobs[rand % jobs.length];
        uint256 greatness = rand % 21;
		if (greatness == 0) {
            output = string(abi.encodePacked("Unskilled ", output));
        } else if (greatness > 10 && greatness < 14) {
            output = string(abi.encodePacked("Neophyte ", output));
        } else if (greatness >= 14 && greatness < 19) {
            output = string(abi.encodePacked("Journeyman ", output));
        } else if (greatness >= 19) {
            if (greatness == 19) {
                output = string(abi.encodePacked("Expert ", output));
            } else {
                output = string(abi.encodePacked("Master ", output));
            }
        }
        return output;
    }


    function pluckJohb(uint256 tokenId, string memory keyPrefix) internal view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        string memory output = jobs[rand % jobs.length];
        uint256 greatness = rand % 21;
		if (greatness == 0) {
            output = string(abi.encodePacked("Unskilled ", output));
        } else if (greatness > 10 && greatness < 14) {
            output = string(abi.encodePacked("Neophyte ", output));
        } else if (greatness >= 14 && greatness < 19) {
            output = string(abi.encodePacked("Journeyman ", output));
        } else if (greatness >= 19) {
            if (greatness == 19) {
                output = string(abi.encodePacked("Expert ", output));
            } else {
                output = string(abi.encodePacked("Master ", output));
            }
        }
        return output;
    }

    function tokenURI(uint256 tokenId) override public view returns (string memory) {
        string[25] memory parts;
        parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 400 400"><style>.base { fill: white; font-family: serif; font-size: 12px; }</style><rect width="100%" height="100%" fill="black" /><text x="200" y="20" fill="red">HEXED LOOT</text><text x="10" y="40" class="base">';

        parts[1] = getRace(tokenId);

        parts[2] = '</text><text x="10" y="60" class="base">';

        parts[3] = getAge(tokenId);

        parts[4] = '</text><text x="10" y="80" class="base">';

        parts[5] = getJob(tokenId);

        parts[6] = '</text><text x="10" y="100" class="base">';

        parts[7] = getWeapon(tokenId);

        parts[8] = '</text><text x="10" y="120" class="base">';

        parts[9] = getHead(tokenId);

        parts[10] = '</text><text x="10" y="140" class="base">';

        parts[11] = getChest(tokenId);

        parts[12] = '</text><text x="10" y="160" class="base">';

        parts[13] = getWaist(tokenId);

        parts[14] = '</text><text x="10" y="180" class="base">';

        parts[15] = getHand(tokenId);
        
        parts[16] = '</text><text x="10" y="200" class="base">';

        parts[17] = getFoot(tokenId);
        
        parts[18] = '</text><text x="10" y="220" class="base">';

        parts[19] = getAccessory(tokenId);
        
        parts[20] = '</text><text x="10" y="240" class="base">';

        parts[21] = getFlask(tokenId);

        parts[22] = '</text><text x="10" y="260" class="base">';

        parts[23] = getRing(tokenId);

        parts[24] = '</text></svg>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8]));
        output = string(abi.encodePacked(output, parts[9], parts[10], parts[11], parts[12], parts[13], parts[14], parts[15], parts[16]));
        output = string(abi.encodePacked(output, parts[17], parts[18], parts[19], parts[20], parts[21], parts[22], parts[23], parts[24]));
        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"name": "Bag #', toString(tokenId), '", "description": "Hexed Loot - Extended version of the Loot project - Join us : discord.gg/QPnDAKCM3s", "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '"}'))));
        output = string(abi.encodePacked('data:application/json;base64,', json));

        return output;
    }

    function claim(uint256 tokenId) public nonReentrant {
        require(tokenId > 0 && tokenId < 6666, "Token ID invalid");
        _safeMint(_msgSender(), tokenId);
    }
    
    function ownerClaim(uint256 tokenId) public nonReentrant onlyOwner {
        require(tokenId >= 6666 && tokenId < 7777, "Token ID invalid");
        _safeMint(owner(), tokenId);
    }
    
    function toString(uint256 value) internal pure returns (string memory) {
    // Inspired by OraclizeAPI's implementation - MIT license
    // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
    
    constructor() ERC721("Loot", "LOOT") Ownable() {}
}

/// [MIT License]
/// @title Base64
/// @notice Provides a function for encoding some bytes in base64
/// @author Brecht Devos <brecht@loopring.org>
library Base64 {
    bytes internal constant TABLE = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /// @notice Encodes some bytes to the base64 representation
    function encode(bytes memory data) internal pure returns (string memory) {
        uint256 len = data.length;
        if (len == 0) return "";

        // multiply by 4/3 rounded up
        uint256 encodedLen = 4 * ((len + 2) / 3);

        // Add some extra buffer at the end
        bytes memory result = new bytes(encodedLen + 32);

        bytes memory table = TABLE;

        assembly {
            let tablePtr := add(table, 1)
            let resultPtr := add(result, 32)

            for {
                let i := 0
            } lt(i, len) {

            } {
                i := add(i, 3)
                let input := and(mload(add(data, i)), 0xffffff)

                let out := mload(add(tablePtr, and(shr(18, input), 0x3F)))
                out := shl(8, out)
                out := add(out, and(mload(add(tablePtr, and(shr(12, input), 0x3F))), 0xFF))
                out := shl(8, out)
                out := add(out, and(mload(add(tablePtr, and(shr(6, input), 0x3F))), 0xFF))
                out := shl(8, out)
                out := add(out, and(mload(add(tablePtr, and(input, 0x3F))), 0xFF))
                out := shl(224, out)

                mstore(resultPtr, out)

                resultPtr := add(resultPtr, 4)
            }

            switch mod(len, 3)
            case 1 {
                mstore(sub(resultPtr, 2), shl(240, 0x3d3d))
            }
            case 2 {
                mstore(sub(resultPtr, 1), shl(248, 0x3d))
            }

            mstore(result, encodedLen)
        }

        return string(result);
    }
}