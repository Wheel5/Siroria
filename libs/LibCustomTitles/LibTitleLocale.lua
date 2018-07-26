--[[
Author: Kyoma
Filename: LibTitleLocale.lua
Version: 3 (Horns of the Reach)
Total: 95 titles
]]--

local libLoaded
local LIB_NAME, VERSION = "LibTitleLocale", 3
local lib, oldminor = LibStub:NewLibrary(LIB_NAME, VERSION)
if not lib then return end

local LocaleTitles =
{
	["de"] = 
	{
		[2] = 
		{
			[1921] = "Der Gnadenlose",
			[1538] = "Histschatten",
			[1159] = "Adept der Totenländer",
			[1546] = "Schnitter der Abenddämmerung",
			[1677] = "Der Großherzige",
			[1808] = "Störfaktor im Uhrwerk",
			[1810] = "Divayth Fyrs Gehilfe",
			[1304] = "Champion der Mahlstrom-Arena",
			[1689] = "Duellant",
			[1434] = "Fluch der Goldküste",
			[1691] = "Fluch der Tiermenschen",
			[1696] = "Schmiedebrecher",
			[1954] = "Chaoswächter",
			[1955] = "Chaoschampion",
			[1956] = "Chaosbewahrer",
			[1704] = "Thane von Falkenring",
			[1836] = "Der Generator",
			[1837] = "Demontagegeneral",
			[1838] = "Der Tick-Tack-Peiniger",
			[1712] = "Bibliothekar",
			[1330] = "makelloser Eroberer",
			[51] = "Monsterjäger",
			[1716] = "Narrenprinz",
			[1462] = "ophidischer Befehlshaber",
			[1723] = "königlicher Narr",
			[1852] = "Champion von Vivec",
			[61] = "Held des Bündnisses",
			[702] = "Meister der Zauberei",
			[703] = "Sieger der Kriegergilde",
			[1728] = "Fürst",
			[1729] = "Ratsherr",
			[1474] = "Shehai-Zerschmetterer",
			[1305] = "Sturmfester",
			[1410] = "Henker",
			[1699] = "Jarlmacher",
			[705] = "Großfeldherr",
			[1727] = "Klanvater",
			[1730] = "Graf",
			[318] = "Schlächter der Daedraherren",
			[587] = "Retter Nirns",
			[1868] = "Erlöser von Morrowind",
			[109] = "Meisterpalatin",
			[106] = "Präfekt",
			[95] = "Legionär",
			[100] = "Hauptmann",
			[1140] = "Boethiahs Sense",
			[1907] = "Standartenwächter",
			[103] = "Oberst",
			[105] = "Brigadier",
			[112] = "Kriegsfürst",
			[111] = "General",
			[1879] = "Klansfreund",
			[110] = "Legat",
			[621] = "Feind Kalthafens",
			[108] = "Palatin",
			[1898] = "Reliktjäger",
			[92] = "Freiwilliger",
			[93] = "Rekrut",
			[94] = "Tyro",
			[1503] = "Magierschlächter",
			[96] = "Veteran",
			[97] = "Unteroffizier",
			[98] = "Feldwebel",
			[99] = "Leutnant",
			[1892] = "Sternengeformter Ritter",
			[101] = "Major",
			[102] = "Zenturio",
			[1895] = "Aderlasser",
			[104] = "Tribun",
			[617] = "Held des Paktes",
			[618] = "Held des Dominions",
			[107] = "Prätorianer",
			[1260] = "Königsmacher",
			[1901] = "Reliktwächter",
			[494] = "Meisterangler",
			[1391] = "dro-m'Athra-Zerstörer",
			[1904] = "Standartenträger",
			[113] = "Großkriegsfürst",
			[114] = "Feldherr",
			[627] = "Erkunder",
			[628] = "Held Tamriels",
			[1248] = "Held von Wrothgar",
			[1910] = "Held der Eroberung",
			[1383] = "Meisterdieb",
			[992] = "Champion der Drachenstern-Arena",
			[1913] = "Großchampion",
			[706] = "Erster Feldwebel",
			[1915] = "Schlachtfeldschlächter",
			[1916] = "Taktiker",
			[1444] = "Schweigender",
			[1918] = "Vorbild",
			[1919] = "Reliktläufer",
		},
		[1] = 
		{
			[1921] = "Die Gnadenlose",
			[1538] = "Histschatten",
			[1159] = "Adeptin der Totenländer",
			[1546] = "Schnitter der Abenddämmerung",
			[1677] = "Die Großherzige",
			[1808] = "Störfaktor im Uhrwerk",
			[1810] = "Divayth Fyrs Gehilfin",
			[1304] = "Champion der Mahlstrom-Arena",
			[1689] = "Duellantin",
			[1434] = "Fluch der Goldküste",
			[1691] = "Fluch der Tiermenschen",
			[1696] = "Schmiedebrecherin",
			[1954] = "Chaoswächterin",
			[1955] = "Chaoschampion",
			[1956] = "Chaosbewahrerin",
			[1704] = "Thane von Falkenring",
			[1836] = "Die Generatorin",
			[1837] = "Demontagegeneral",
			[1838] = "Die Tick-Tack-Peinigerin",
			[1712] = "Bibliothekarin",
			[1330] = "makellose Eroberin",
			[51] = "Monsterjägerin",
			[1716] = "Narrenprinzessin",
			[1462] = "ophidische Befehlshaberin",
			[1723] = "königliche Närrin",
			[1852] = "Champion von Vivec",
			[61] = "Heldin des Bündnisses",
			[702] = "Meisterin der Zauberei",
			[703] = "Siegerin der Kriegergilde",
			[1728] = "Fürstin",
			[1729] = "Ratsherrin",
			[1474] = "Shehai-Zerschmetterin",
			[1305] = "Sturmfeste",
			[1410] = "Henkerin",
			[109] = "Meisterpalatina",
			[1699] = "Jarlmacherin",
			[705] = "Großfeldherrin",
			[106] = "Präfektin",
			[1727] = "Klanmutter",
			[587] = "Retterin Nirns",
			[1868] = "Erlöserin von Morrowind",
			[112] = "Kriegsfürstin",
			[1503] = "Magierschlächterin",
			[992] = "Champion der Drachenstern-Arena",
			[1895] = "Aderlasserin",
			[1140] = "Boethiahs Sense",
			[1907] = "Standartenwächterin",
			[100] = "Hauptmann",
			[103] = "Oberst",
			[105] = "Brigadierin",
			[111] = "Generalin",
			[1879] = "Klansfreundin",
			[110] = "Legatin",
			[1901] = "Reliktwächterin",
			[108] = "Palatina",
			[1898] = "Reliktjägerin",
			[92] = "Freiwillige",
			[93] = "Rekrutin",
			[94] = "Tyro",
			[95] = "Legionärin",
			[1248] = "Heldin von Wrothgar",
			[97] = "Unteroffizierin",
			[98] = "Feldwebel",
			[99] = "Leutnant",
			[1892] = "Sternengeformte Ritterin",
			[101] = "Majorin",
			[102] = "Zenturio",
			[1383] = "Meisterdiebin",
			[104] = "Tribunin",
			[617] = "Heldin des Paktes",
			[618] = "Heldin des Dominions",
			[107] = "Prätorianerin",
			[1260] = "Königsmacherin",
			[621] = "Feindin Kalthafens",
			[494] = "Meisteranglerin",
			[1391] = "dro-m'Athra-Zerstörerin",
			[1904] = "Standartenträgerin",
			[113] = "Großkriegsfürstin",
			[114] = "Feldherrin",
			[627] = "Erkunderin",
			[628] = "Heldin Tamriels",
			[96] = "Veteranin",
			[1910] = "Heldin der Eroberung",
			[318] = "Schlächterin der Daedraherren",
			[1730] = "Gräfin",
			[1913] = "Großchampion",
			[706] = "Erster Feldwebel",
			[1915] = "Schlachtfeldschlächterin",
			[1916] = "Taktiker",
			[1444] = "Schweigende",
			[1918] = "Vorbild",
			[1919] = "Reliktläuferin",
		},
	},
	["en"] = 
	{
		[2] = 
		{
			[2043] = "Undaunted",
			[2136] = "Bringer of Light",
			[2139] = "Gryphon Heart",
			[1538] = "Hist-Shadow",
			[1159] = "Deadlands Adept",
			[1546] = "Sun's Dusk Reaper",
			[1677] = "Magnanimous",
			[1808] = "Clockwork Confounder",
			[1810] = "Divayth Fyr's Coadjutor",
			[1304] = "Maelstrom Arena Champion",
			[1689] = "Duelist",
			[1434] = "Bane of the Gold Coast",
			[1691] = "Bane of Beastmen",
			[1696] = "Forge Breaker",
			[1954] = "Chaos Guardian",
			[1955] = "Chaos Champion",
			[1956] = "Chaos Keeper",
			[1704] = "Thane of Falkreath",
			[1836] = "The Dynamo",
			[1837] = "Disassembly General",
			[1838] = "Tick-Tock Tormentor",
			[1712] = "Librarian",
			[1330] = "The Flawless Conqueror",
			[51] = "Monster Hunter",
			[1716] = "Lord of Misrule",
			[1462] = "Ophidian Overlord",
			[1723] = "Royal Jester",
			[1852] = "Champion of Vivec",
			[61] = "Covenant Hero",
			[702] = "Master Wizard",
			[703] = "Fighters Guild Victor",
			[1728] = "Lord",
			[1729] = "Councilor",
			[1474] = "Shehai Shatterer",
			[1305] = "Stormproof",
			[1410] = "Executioner",
			[1444] = "Silencer",
			[705] = "Grand Overlord",
			[1727] = "Clan Father",
			[706] = "First Sergeant",
			[318] = "Daedric Lord Slayer",
			[587] = "Savior of Nirn",
			[1868] = "Savior of Morrowind",
			[992] = "Dragonstar Arena Champion",
			[1383] = "Master Thief",
			[1503] = "Mageslayer",
			[1248] = "Hero of Wrothgar",
			[628] = "Tamriel Hero",
			[627] = "Explorer",
			[1895] = "Bloodletter",
			[617] = "Pact Hero",
			[1904] = "Standard-Bearer",
			[1391] = "Dro-m'Athra Destroyer",
			[1879] = "Clanfriend",
			[494] = "Master Angler",
			[1901] = "Relic Guardian",
			[1260] = "Kingmaker",
			[618] = "Dominion Hero",
			[92] = "Volunteer",
			[93] = "Recruit",
			[94] = "Tyro",
			[95] = "Legionary",
			[96] = "Veteran",
			[97] = "Corporal",
			[98] = "Sergeant",
			[99] = "Lieutenant",
			[100] = "Captain",
			[101] = "Major",
			[102] = "Centurion",
			[103] = "Colonel",
			[104] = "Tribune",
			[105] = "Brigadier",
			[106] = "Prefect",
			[107] = "Praetorian",
			[108] = "Palatine",
			[109] = "August Palatine",
			[110] = "Legate",
			[111] = "General",
			[112] = "Warlord",
			[113] = "Grand Warlord",
			[114] = "Overlord",
			[1907] = "Standard-Guardian",
			[1140] = "Boethiah's Scythe",
			[1892] = "Star-Made Knight",
			[1910] = "Conquering Hero",
			[1898] = "Relic Hunter",
			[621] = "Enemy of Coldharbour",
			[1913] = "Grand Champion",
			[1730] = "Count",
			[1915] = "Battleground Butcher",
			[1916] = "Tactician",
			[1699] = "Jarl Maker",
			[1918] = "Paragon",
			[1919] = "Relic Runner",
		},
		[1] = 
		{
			[1921] = "The Merciless",
			[2079] = "Voice of Reason",
			[2075] = "Immortal Redeemer",
			[1538] = "Hist-Shadow",
			[1159] = "Deadlands Adept",
			[1546] = "Sun's Dusk Reaper",
			[1677] = "Magnanimous",
			[1808] = "Clockwork Confounder",
			[1810] = "Divayth Fyr's Coadjutor",
			[1304] = "Maelstrom Arena Champion",
			[1689] = "Duelist",
			[1434] = "Bane of the Gold Coast",
			[1691] = "Bane of Beastmen",
			[1696] = "Forge Breaker",
			[1954] = "Chaos Guardian",
			[1955] = "Chaos Champion",
			[1956] = "Chaos Keeper",
			[1704] = "Thane of Falkreath",
			[1836] = "The Dynamo",
			[1837] = "Disassembly General",
			[1838] = "Tick-Tock Tormentor",
			[1712] = "Librarian",
			[1330] = "The Flawless Conqueror",
			[51] = "Monster Hunter",
			[1716] = "Lady of Misrule",
			[1462] = "Ophidian Overlord",
			[1723] = "Royal Jester",
			[1852] = "Champion of Vivec",
			[61] = "Covenant Hero",
			[702] = "Master Wizard",
			[703] = "Fighters Guild Victor",
			[1728] = "Lady",
			[1729] = "Councilor",
			[1474] = "Shehai Shatterer",
			[1305] = "Stormproof",
			[1410] = "Executioner",
			[1444] = "Silencer",
			[705] = "Grand Overlord",
			[1727] = "Clan Mother",
			[706] = "First Sergeant",
			[1901] = "Relic Guardian",
			[587] = "Savior of Nirn",
			[1868] = "Savior of Morrowind",
			[1730] = "Countess",
			[318] = "Daedric Lord Slayer",
			[1248] = "Hero of Wrothgar",
			[96] = "Veteran",
			[628] = "Tamriel Hero",
			[627] = "Explorer",
			[1383] = "Master Thief",
			[617] = "Pact Hero",
			[1904] = "Standard-Bearer",
			[1391] = "Dro-m'Athra Destroyer",
			[1879] = "Clanfriend",
			[494] = "Master Angler",
			[621] = "Enemy of Coldharbour",
			[1260] = "Kingmaker",
			[618] = "Dominion Hero",
			[92] = "Volunteer",
			[93] = "Recruit",
			[94] = "Tyro",
			[1503] = "Mageslayer",
			[992] = "Dragonstar Arena Champion",
			[97] = "Corporal",
			[98] = "Sergeant",
			[99] = "Lieutenant",
			[100] = "Captain",
			[101] = "Major",
			[102] = "Centurion",
			[1895] = "Bloodletter",
			[104] = "Tribune",
			[105] = "Brigadier",
			[106] = "Prefect",
			[107] = "Praetorian",
			[108] = "Palatine",
			[109] = "August Palatine",
			[110] = "Legate",
			[111] = "General",
			[112] = "Warlord",
			[113] = "Grand Warlord",
			[114] = "Overlord",
			[1907] = "Standard-Guardian",
			[1140] = "Boethiah's Scythe",
			[1892] = "Star-Made Knight",
			[1910] = "Conquering Hero",
			[95] = "Legionary",
			[1898] = "Relic Hunter",
			[1913] = "Grand Champion",
			[103] = "Colonel",
			[1915] = "Battleground Butcher",
			[1916] = "Tactician",
			[1699] = "Jarl Maker",
			[1918] = "Paragon",
			[1919] = "Relic Runner",
		},
	},
	["fr"] = 
	{
		[2] = 
		{
			[1921] = "L'Impitoyable",
			[1538] = "Ombre d'Hist",
			[1159] = "Adepte des terres mortes",
			[1546] = "Faucheur de sombreciel",
			[1677] = "Magnanime",
			[1808] = "Troubleur de rouages",
			[1810] = "Coadjuteur de Divayth Fyr",
			[1304] = "Champion de l'Arène de Maelström",
			[1689] = "Duelliste",
			[1434] = "Fléau de la Côte d'or",
			[1691] = "Fléau des hommes-bêtes",
			[1696] = "Briseur de forge",
			[1954] = "Gardien du chaos",
			[1955] = "Champion du chaos",
			[1956] = "Protecteur du chaos",
			[1704] = "Thane d'Épervine",
			[1836] = "La Dynamo",
			[1837] = "Désassembleur général",
			[1838] = "Tourmenteur des Tic-tac",
			[1712] = "Bibliothécaire",
			[1330] = "Le conquérant implacable",
			[51] = "Chasseur de monstres",
			[1716] = "Seigneur du Désordre",
			[1462] = "Suzerain ophidien",
			[1723] = "Bouffon royal",
			[1852] = "Champion de Vivec",
			[61] = "Héros de l'Alliance",
			[702] = "Maître mage",
			[703] = "Champion de la guilde des guerriers",
			[1728] = "Seigneur",
			[1729] = "Conseiller",
			[1474] = "Briseur de Shéhaï",
			[1305] = "L'insubmersible",
			[1410] = "Exécuteur",
			[1444] = "Surineur",
			[705] = "Grand maréchal",
			[1727] = "Père de clan",
			[706] = "Premier sergent",
			[1895] = "Exsanguinateur",
			[587] = "Sauveur de Nirn",
			[1868] = "Sauveur de Morrowind",
			[318] = "Tueur de seigneur Daedra",
			[96] = "Vétéran",
			[1503] = "Tueur de mages",
			[992] = "Champion de l'arène de l'Étoile du dragon",
			[628] = "Héros de Tamriel",
			[627] = "Explorateur",
			[1383] = "Maître voleur",
			[617] = "Héros du Pacte",
			[1904] = "Porte-étendard",
			[1391] = "Destructeur des dro-m'Athra",
			[1879] = "Ami des clans",
			[494] = "Maître de pêche",
			[1901] = "Gardien de reliques",
			[1260] = "Faiseur de rois",
			[618] = "Héros du Domaine",
			[92] = "Volontaire",
			[93] = "Recrue",
			[94] = "Première classe",
			[95] = "Légionnaire",
			[1248] = "Héros de Wrothgar",
			[97] = "Caporal",
			[98] = "Sergent",
			[99] = "Lieutenant",
			[1892] = "Chevalier stellaire",
			[101] = "Major",
			[102] = "Centurion",
			[103] = "Colonel",
			[104] = "Tribun",
			[105] = "Brigadier",
			[1898] = "Chasseur de reliques",
			[107] = "Prétorien",
			[108] = "Palatin",
			[621] = "Ennemi de Havreglace",
			[110] = "Légat",
			[111] = "Général",
			[112] = "Seigneur de guerre",
			[113] = "Grand seigneur de guerre",
			[114] = "Maréchal",
			[1907] = "Garde-étendard",
			[1140] = "Faux de Boéthia",
			[100] = "Capitaine",
			[1910] = "Héros conquérant",
			[106] = "Préfet",
			[109] = "Palatin Auguste",
			[1913] = "Grand champion",
			[1730] = "Comte",
			[1915] = "Boucher des champs de bataille",
			[1916] = "Tacticien",
			[1699] = "Faiseur de Jarl",
			[1918] = "Parangon",
			[1919] = "Livreur de reliques",
		},
		[1] = 
		{
			[1921] = "L'Impitoyable",
			[1538] = "Ombre d'Hist",
			[1159] = "Adepte des terres mortes",
			[1546] = "Faucheuse de sombreciel",
			[1677] = "Magnanime",
			[1808] = "Troubleuse de rouages",
			[1810] = "Coadjutrice de Divayth Fyr",
			[1304] = "Championne de l'Arène de Maelström",
			[1689] = "Duelliste",
			[1434] = "Fléau de la Côte d'or",
			[1691] = "Fléau des hommes-bêtes",
			[1696] = "Briseuse de forge",
			[1954] = "Gardienne du chaos",
			[1955] = "Championne du chaos",
			[1956] = "Protectrice du chaos",
			[1704] = "Thane d'Épervine",
			[1836] = "La Dynamo",
			[1837] = "Désassembleuse générale",
			[1838] = "Tourmenteuse des Tic-tac",
			[1712] = "Bibliothécaire",
			[1330] = "La conquérante implacable",
			[51] = "Chasseuse de monstres",
			[1716] = "Dame du Désordre",
			[1462] = "Suzeraine ophidienne",
			[1723] = "Bouffon royal",
			[1852] = "Championne de Vivec",
			[61] = "Héroïne de l'Alliance",
			[702] = "Maître mage",
			[703] = "Championne de la guilde des guerriers",
			[1728] = "Dame",
			[1729] = "Conseillère",
			[1474] = "Briseuse de Shéhaï",
			[1305] = "L'insubmersible",
			[1260] = "Faiseuse de rois",
			[1248] = "Héroïne de Wrothgar",
			[1383] = "Maîtresse voleuse",
			[1391] = "Destructrice des dro-m'Athra",
			[1410] = "Exécutrice",
			[1444] = "Surineuse",
			[587] = "Sauveuse de Nirn",
			[1868] = "Sauveuse de Morrowind",
			[1699] = "Faiseuse de Jarl",
			[494] = "Maîtresse de pêche",
			[705] = "Grand maréchal",
			[706] = "Premier sergent",
			[1892] = "Chevalier stellaire",
			[1727] = "Mère de clan",
			[1730] = "Comtesse",
			[617] = "Héroïne du Pacte",
			[628] = "Héroïne de Tamriel",
			[618] = "Héroïne du Domaine",
			[1879] = "Amie des clans",
			[318] = "Tueuse de seigneur Daedra",
			[621] = "Ennemie de Havreglace",
			[627] = "Exploratrice",
			[992] = "Championne de l'arène de l'Étoile du dragon",
			[92] = "Volontaire",
			[93] = "Recrue",
			[94] = "Première classe",
			[95] = "Légionnaire",
			[96] = "Vétéran",
			[97] = "Caporal",
			[98] = "Sergent",
			[99] = "Lieutenant",
			[100] = "Capitaine",
			[101] = "Major",
			[102] = "Centurion",
			[103] = "Colonel",
			[104] = "Tribun",
			[105] = "Brigadier",
			[1898] = "Chasseuse de reliques",
			[107] = "Prétorienne",
			[108] = "Palatine",
			[1901] = "Gardienne de reliques",
			[110] = "Légat",
			[111] = "Général",
			[1904] = "Porte-étendard",
			[113] = "Grand seigneur de guerre",
			[114] = "Maréchal",
			[1907] = "Garde-étendard",
			[1140] = "Faux de Boéthia",
			[1895] = "Exsanguinatrice",
			[1910] = "Héroïne conquérante",
			[1503] = "Tueuse de mages",
			[112] = "Seigneur de guerre",
			[1913] = "Grande championne",
			[106] = "Préfète",
			[1915] = "Bouchère des champs de bataille",
			[1916] = "Tacticien",
			[109] = "Palatine Auguste",
			[1918] = "Parangon",
			[1919] = "Livreuse de reliques",
		},
	},
}

local lang = GetCVar("Language.2")
local GetAchievementRewardTitle_original

local function Unload()
	GetAchievementRewardTitle = GetAchievementRewardTitle_original
end

local function Load()

	GetAchievementRewardTitle_original = GetAchievementRewardTitle
	GetAchievementRewardTitle = function(achievementId, gender)
		local hasTitle, title = GetAchievementRewardTitle_original(achievementId, gender)
		if (hasTitle and gender) then
			if (LocaleTitles[lang] and LocaleTitles[lang][gender] and LocaleTitles[lang][gender][achievementId]) then
				title = LocaleTitles[lang][gender][achievementId]
			end
		end
		return hasTitle, title
	end

	lib.Unload = Unload
end

if(lib.Unload) then lib.Unload() end
Load()
