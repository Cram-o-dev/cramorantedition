TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw CramManiacData
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Rival1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Rival2Data
	dw Rival3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData

; if first byte != $FF, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == $FF, then
	; first byte is $FF (obviously)
	; every next two bytes are a level and species
	; null-terminated

YoungsterData:
; Route 3
	db 12, RATTATA, EKANS, 0
	db 15, SPEAROW, 0
; Mt. Moon 1F
	db 10, RATTATA, OMANYTE, ZUBAT, 0
; Route 24
	db 14, RATTATA, EKANS, ZUBAT, 0
; Route 25
	db 15, RATTATA, SPEAROW, 0
	db 17, SLOWPOKE, 0
	db 14, EKANS, SANDSHREW, 0
; SS Anne 1F Rooms
	db 21, NIDORAN_M, DITTO, 0
; Route 11
	db 21, EKANS, 0
	db 19, SANDSHREW, ZUBAT, 0
	db 17, RATTATA, DITTO, RATICATE, 0
	db 18, NIDORAN_M, NIDORINO, 0
; Unused
	db 17, SPEAROW, RATTATA, RATTATA, SPEAROW, 0
	db 24, SANDSHREW, 0
; Way Of Fish BF
	db 35, MAGIKARP, SEAKING, SEADRA, 0

BugCatcherData:
; Viridian Forest
	db 8, WEEDLE, CATERPIE, 0
	db 7, METAPOD, CATERPIE, WEEDLE, KAKUNA, 0
	db 11, CATERPIE, WEEDLE, 0
; Route 3
	db 11, CATERPIE, WEEDLE, CATERPIE, 0
	db 10, WEEDLE, KAKUNA, CATERPIE, METAPOD, 0
	db 12, CATERPIE, METAPOD, 0
; Mt. Moon 1F
	db 12, WEEDLE, KAKUNA, 0
	db 10, CATERPIE, METAPOD, KABUTO, 0
; Route 24
	db 14, CATERPIE, WEEDLE, 0
; Route 6
	db 19, WEEDLE, CATERPIE, WEEDLE, 0
	db 22, BUTTERFREE, 0
; Unused
	db 18, METAPOD, CATERPIE, VENONAT, 0
; Route 9
	db 20, BEEDRILL, PINSIR, 0
	db 22, CATERPIE, WEEDLE, VENONAT, SCYTHER, 0
; Viridian Forest
	db 8, CATERPIE, METAPOD, 0

LassData:
; Route 3
	db 10, PIDGEY, EEVEE, 0
	db 11, RATTATA, NIDORAN_M, 0
	db 14, JIGGLYPUFF, 0
; Route 4
	db 33, PARAS, PARAS, PARASECT, 0
; Mt. Moon 1F
	db 12, ODDISH, BELLSPROUT, 0
	db 14, CLEFAIRY, 0
; Route 24
	db 16, PIDGEY, NIDORAN_F, 0
	db 14, PIDGEY, NIDORAN_F, 0
; Route 25
	db 15, NIDORAN_M, NIDORAN_F, 0
	db 13, ODDISH, PIDGEY, ODDISH, 0
; SS Anne 1F Rooms
	db 18, PIDGEY, NIDORAN_F, EEVEE, 0
; SS Anne 2F Rooms
	db 20, JIGGLYPUFF, RATTATA, PIKATWO, 0
; Route 8
	db 24, NIDORAN_F, NIDORINA, 0
	db 25, MEOWTH, MEOWTH, MEOWTH, 0
	db 20, PIDGEY, RATTATA, NIDORAN_F, MEOWTH, NIDORAN_M, 0
	db 23, CLEFAIRY, CLEFAIRY, 0
; Celadon Gym
	db 25, BELLSPROUT, WEEPINBELL, 0
	db 25, ODDISH, GLOOM, 0
; Viridian Forest
	db 6, NIDORAN_F, NIDORAN_M, 0

SailorData:
; SS Anne Stern
	db 18, MACHOP, SHELLDER, 0
	db 17, MACHOP, TENTACOOL, 0
; SS Anne B1F Rooms
	db 23, SHELLDER, 0
	db 17, HORSEA, SHELLDER, TENTACOOL, 0
	db 18, TENTACOOL, STARYU, 0
	db 17, HORSEA, HORSEA, HORSEA, 0
	db 21, MACHOP, 0
; Vermilion Gym
	db 22, MAGNEMITE, PIKATWO, PIKATWO, 0

JrTrainerMData:
; Pewter Gym
	db 14, DIGLETT, SANDSHREW, 0
; Route 24/Route 25
	db 14, RATTATA, EKANS, 0
; Route 24
	db 17, MANKEY, EEVEE, 0
; Route 6
	db 22, SQUIRTLE, 0
	db 18, SPEAROW, RATICATE, PINSIR, 0
; Unused
	db 18, DIGLETT, DIGLETT, SANDSHREW, 0
; Route 9
	db 22, GROWLITHE, CHARMANDER, 0
	db 22, RATTATA, DIGLETT, EKANS, SANDSHREW, 0
; Route 12
	db 30, NIDORAN_M, NIDORINO, 0
; Route 6
	db 21, BELLSPROUT, SCYTHER, 0

JrTrainerFData:
; Cerulean Gym
	db 19, GOLDEEN, 0
; Route 6
	db 19, ODDISH, BELLSPROUT, 0
	db 18, PIDGEY, PIDGEY, PIDGEY, 0
; Unused
	db 22, BULBASAUR, 0
; Route 9
	db 19, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0
	db 25, MEOWTH, 0
; Route 10
	db 21, JIGGLYPUFF, CLEFAIRY, PIKATWO, 0
	db 23, PIDGEY, PIDGEOTTO, 0
; Rock Tunnel B1F
	db 23, JIGGLYPUFF, PIDGEY, MEOWTH, 0
	db 25, ODDISH, BULBASAUR, 0
; Celadon Gym
	db 26, BULBASAUR, IVYSAUR, 0
; Route 13
	db 28, PIDGEY, MEOWTH, PIKATWO, PERSIAN, 0
	db 32, POLIWAG, EEVEE, 0
	db 29, PIDGEY, MEOWTH, FARFETCHD, PIDGEOTTO, 0
	db 30, GOLDEEN, POLIWAG, HORSEA, 0
; Route 20
	db 35, VAPOREON, SEAKING, ARROKUDA, 0
; Rock Tunnel 1F
	db 23, BELLSPROUT, CLEFAIRY, 0
	db 22, MEOWTH, ODDISH, PIDGEY, 0
	db 20, PIDGEY, RATTATA, RATTATA, BELLSPROUT, 0
; Route 15
	db 29, GLOOM, ODDISH, ODDISH, 0
	db 31, PIKATWO, RAICHU, 0
	db 36, CLEFAIRY, 0
	db 30, BELLSPROUT, ODDISH, TANGELA, SCYTHER, 0
; Route 20
	db 35, TENTACOOL, HORSEA, SEEL, 0
; Route 6
	db 23, CUBONE, 0

PokemaniacData:
; Route 10
	db 35, RHYHORN, LICKITUNG, 0
	db 25, CUBONE, SLOWPOKE, 0
; Rock Tunnel B1F
	db 22, SLOWPOKE, SLOWPOKE, SLOWPOKE, 0
	db 26, CHARMANDER, CUBONE, DITTO, 0
	db 29, SLOWPOKE, PINSIR, 0
; Victory Road 2F
	db 45, CHARMELEON, LAPRAS, LICKITUNG, 0
; Rock Tunnel 1F
	db 25, CUBONE, SLOWPOKE, EEVEE, 0

SuperNerdData:
; Mt. Moon 1F
	db 12, MAGNEMITE, VOLTORB, 0
; Mt. Moon B2F
	db 12, GRIMER, VOLTORB, KOFFING, 0
; Route 8
	db 20, VOLTORB, KOFFING, ELECTABUZZ, MAGNEMITE, 0
	db 24, GRIMER, MUK, 0
	db 26, KOFFING, PORYGON, 0
; Unused
	db 22, KOFFING, MAGNEMITE, WEEZING, 0
	db 20, MAGNEMITE, MAGNEMITE, KOFFING, MAGNEMITE, 0
	db 24, MAGNEMITE, VOLTORB, 0
; Cinnabar Gym
	db 43, VULPIX, NINETALES, FLAREON, 0
	db 42, PONYTA, CHARMANDER, VULPIX, GROWLITHE, 0
	db 47, RAPIDASH, 0
	db 45, GROWLITHE, VULPIX, 0

HikerData:
; Mt. Moon 1F
	db 12, GEODUDE, GEODUDE, ONIX, 0
; Route 25
	db 15, MACHOP, GEODUDE, 0
	db 13, GEODUDE, GEODUDE, MACHOP, GEODUDE, 0
	db 17, ONIX, 0
; Route 9
	db 24, GEODUDE, ONIX, 0
	db 21, GEODUDE, MACHOP, GEODUDE, 0
; Route 10
	db 23, GEODUDE, ONIX, 0
	db 21, ONIX, GRAVELER, 0
; Rock Tunnel B1F
	db 24, GEODUDE, GEODUDE, GRAVELER, 0
	db 29, GEODUDE, 0
; Route 9/Rock Tunnel B1F
	db 23, MACHOP, ONIX, 0
; Rock Tunnel 1F
	db 21, GEODUDE, MACHOP, OMANYTE, KABUTO, 0
	db 23, ONIX, ONIX, GEODUDE, 0
	db 22, GEODUDE, GRAVELER, 0

BikerData:
; Route 13
	db 30, KOFFING, GRIMER, MEOWTH, 0
; Route 14
	db 31, KOFFING, GRIMER, 0
; Route 15
	db 27, KOFFING, WEEZING, PINSIR, GRIMER, 0
	db 30, KOFFING, GRIMER, WEEZING, 0
; Route 16
	db 29, GRIMER, KOFFING, 0
	db 35, WEEZING, 0
	db 27, GRIMER, EEVEE, GRIMER, 0
; Route 17
	db 29, WEEZING, KOFFING, WEEZING, 0
	db 36, MUK, 0
	db 31, VOLTORB, ELECTRODE, JOLTEON, 0
	db 31, WEEZING, MUK, 0
	db 29, KOFFING, WEEZING, KOFFING, WEEZING, 0
; Route 14
	db 29, KOFFING, KOFFING, GRIMER, 0
	db 29, GRIMER, GRIMER, KOFFING, 0
	db 33, WEEZING, MUK, 0

BurglarData:
; Unused
	db 29, GROWLITHE, VULPIX, 0
	db 33, GROWLITHE, DITTO, 0
	db 28, VULPIX, CHARMANDER, PONYTA, 0
; Cinnabar Gym
	db 40, GROWLITHE, VULPIX, NINETALES, 0
	db 47, PONYTA, RAPIDASH, 0
	db 47, VULPIX, GROWLITHE, 0
; Mansion 2F
	db 40, CHARMANDER, CHARMELEON, CHARIZARD, 0
; Mansion 3F
	db 46, VULPIX, NINETALES, 0
; Mansion B1F
	db 43, GROWLITHE, PONYTA, 0

EngineerData:
; Unused
	db 21, VOLTORB, MAGNEMITE, 0
; Route 11
	db 23, MAGNEMITE, PORYGON, 0
	db 19, MAGNEMITE, ELECTABUZZ, MAGNETON, 0

CramManiacData:
; Pokemon Mansion B1F
	db $FF, 1, PIKACHU, 35, PIKACHU, 50, PIKACHU, 75, PIKACHU, 90, PIKACHU, 100, PIKACHU, 0

FisherData:
; SS Anne 2F Rooms
	db 17, GOLDEEN, TENTACOOL, GOLDEEN, ARROKUDA, 0
; SS Anne B1F Rooms
	db 17, TENTACOOL, STARYU, SHELLDER, 0
; Route 12
	db 26, GOLDEEN, POLIWAG, GOLDEEN, 0
	db 28, TENTACOOL, GOLDEEN, 0
	db 30, SEAKING, 0
	db 26, POLIWAG, SHELLDER, GOLDEEN, HORSEA, 0
; Route 21
	db 38, SEAKING, GOLDEEN, BARASKEWDA, 0
	db 35, SHELLDER, CLOYSTER, SLOWBRO, 0
	db 50, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, 0
	db 36, SEAKING, GOLDEEN, PSYDUCK, GOLDUCK, 0
; Route 12
	db 28, MAGIKARP, KRABBY, ARROKUDA, 0

SwimmerData:
; Cerulean Gym
	db 15, HORSEA, SHELLDER, KRABBY, 0
; Route 19
	db 34, TENTACOOL, SHELLDER, KRABBY, ARROKUDA, 0
	db 32, GOLDEEN, HORSEA, STARYU, 0
	db 35, POLIWAG, POLIWHIRL, 0
	db 31, HORSEA, TENTACOOL, TENTACOOL, GOLDEEN, 0
	db 32, GOLDEEN, SHELLDER, SEAKING, ARROKUDA, 0
	db 36, HORSEA, PSYDUCK, 0
	db 33, TENTACOOL, TENTACOOL, STARYU, HORSEA, TENTACRUEL, 0
; Route 20
	db 36, SHELLDER, CLOYSTER, 0
	db 40, STARYU, ARROKUDA, 0
	db 33, HORSEA, PSYDUCK, SEADRA, ARROKUDA, 0
; Route 21
	db 37, SEADRA, TENTACRUEL, 0
	db 43, STARMIE, 0
	db 37, STARYU, WARTORTLE, 0
	db 35, POLIWHIRL, TENTACOOL, SEADRA, BARASKEWDA, 0

CueBallData:
; Route 16
	db 30, MACHOP, MANKEY, MACHOP, 0
	db 32, MANKEY, MACHOP, 0
	db 35, MAGMAR, 0
; Route 17
	db 32, MANKEY, PRIMEAPE, 0
	db 32, MACHOP, MACHOKE, 0
	db 36, MACHAMP, 0
	db 30, MANKEY, MACHOP, MACHOKE, 0
	db 31, PRIMEAPE, MACHOKE, 0
; Route 21
	db 33, TENTACOOL, TENTACRUEL, SNORLAX, 0

GamblerData:
; Route 11
	db 19, POLIWAG, HORSEA, 0
	db 19, BELLSPROUT, ODDISH, 0
	db 19, VOLTORB, MAGNEMITE, 0
	db 21, GROWLITHE, VULPIX, 0
; Route 8
	db 22, DRATINI, POLIWAG, POLIWHIRL, 0
; Unused
	db 22, ONIX, GEODUDE, GRAVELER, 0
; Route 8
	db 26, GROWLITHE, VULPIX, 0

BeautyData:
; Celadon Gym
	db 22, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0
	db 25, BELLSPROUT, BELLSPROUT, 0
	db 28, EXEGGCUTE, 0
; Route 13
	db 30, RATTATA, VULPIX, PIKATWO, 0
	db 31, CLEFAIRY, MEOWTH, DRATINI, 0
; Route 20
	db 38, SEAKING, 0
	db 34, SHELLDER, SHELLDER, CLOYSTER, 0
	db 34, POLIWAG, SEAKING, SEEL, 0
; Route 15
	db 32, PIDGEOTTO, WIGGLYTUFF, CLEFABLE, 0
	db 33, BULBASAUR, IVYSAUR, 0
; Unused
	db 33, WEEPINBELL, BELLSPROUT, WEEPINBELL, 0
; Route 19
	db 34, POLIWAG, GOLDEEN, SEAKING, POLIWRATH, 0
	db 36, GOLDEEN, SEAKING, 0
	db 35, STARYU, STARYU, BARASKEWDA, 0
; Route 20
	db 33, SEADRA, HORSEA, DEWGONG, 0

PsychicData:
; Saffron Gym
	db 35, KADABRA, SLOWPOKE, MR_MIME, KADABRA, 0
	db 38, MR_MIME, KADABRA, 0
	db 36, SLOWPOKE, SLOWPOKE, SLOWBRO, 0
	db 40, SLOWBRO, 0

RockerData:
; Vermilion Gym
	db 20, VOLTORB, MAGNEMITE, VOLTORB, 0
; Route 12
	db 31, VOLTORB, ELECTRODE, 0
; Way Of Fish BF
	db 37, GYARADOS, SEAKING, ARROKUDA, HORSEA, BARASKEWDA, 0

JugglerData:
; Silph Co. 5F
	db 29, KADABRA, MR_MIME, 0
; Victory Road 2F
	db 45, DROWZEE, HYPNO, KADABRA, ALAKAZAM, 0
; Fuchsia Gym
	db 33, DROWZEE, DROWZEE, KADABRA, DROWZEE, 0
	db 36, DROWZEE, HYPNO, 0
; Victory Road 2F
	db 53, MR_MIME, PIKACHU, 0
; Unused
	db 33, HYPNO, 0
; Fuchsia Gym
	db 39, HYPNO, 0
	db 37, DROWZEE, KADABRA, 0

TamerData:
; Fuchsia Gym
	db 37, SANDSLASH, ARBOK, 0
	db 34, ARBOK, SANDSLASH, ARBOK, 0
; Viridian Gym
	db 49, RHYDON, 0
	db 45, ARBOK, TAUROS, 0
; Victory Road 2F
	db 47, PERSIAN, GOLDUCK, SCYTHER, 0
; Unused
	db 42, RHYHORN, PRIMEAPE, ARBOK, TAUROS, 0

BirdKeeperData:
; Route 13
	db 29, PIDGEY, PIDGEOTTO, 0
	db 25, SPEAROW, PIDGEY, PIDGEY, SPEAROW, SPEAROW, 0
	db 26, PIDGEY, PIDGEOTTO, SPEAROW, FEAROW, 0
; Route 14
	db 37, FARFETCHD, 0
	db 33, SPEAROW, FEAROW, 0
; Route 15
	db 29, PIDGEOTTO, FARFETCHD, DODUO, PIDGEY, PIKACHU, 0
	db 32, DODRIO, DODUO, DODUO, 0
; Route 18
	db 36, FEAROW, PIDGEOT, 0
	db 37, DODRIO, 0
	db 32, SPEAROW, FEAROW, FARFETCHD, PIKACHU, 0
; Route 20
	db 39, PIDGEOT, FEAROW, FARFETCHD, 0
; Unused
	db 39, PIDGEOTTO, PIDGEOTTO, PIDGEY, PIDGEOTTO, 0
	db 42, FARFETCHD, FEAROW, 0
; Route 14
	db 30, PIDGEY, DODUO, PIDGEOTTO, 0
	db 29, PIDGEY, SPEAROW, PIDGEY, FEAROW, 0
	db 32, PIDGEOTTO, FEAROW, 0
	db 30, SPEAROW, DODUO, FEAROW, PIKACHU, 0

BlackbeltData:
; Fighting Dojo
	db 39, HITMONLEE, HITMONCHAN, 0
	db 34, MANKEY, MANKEY, PRIMEAPE, 0
	db 35, MACHOP, MACHOKE, 0
	db 36, PRIMEAPE, POLIWRATH, 0
	db 34, MACHOP, MANKEY, PRIMEAPE, 0
; Viridian Gym
	db 46, MACHOP, MACHOKE, 0
	db 48, MACHAMP, 0
	db 45, MACHOKE, MACHOP, MACHOKE, 0
; Victory Road 2F
	db 43, MACHOKE, MACHOP, MACHOKE, 0

Rival1Data:
	db 5, ARROKUDA, 0
; Route 22
	db $FF, 9, SPEAROW, 8, ARROKUDA, 0
; Cerulean City
	db $FF, 18, SPEAROW, 15, SANDSHREW, 15, RATTATA, 17, ARROKUDA, 0

ProfOakData:
; Unused
	db $FF, 85, GENGAR, 86, TAUROS, 87, EXEGGUTOR, 89, ARCANINE, 90, GYARADOS, 92, DRAGONITE, 0
	db $FF, 85, GENGAR, 86, TAUROS, 87, EXEGGUTOR, 89, ARCANINE, 90, GYARADOS, 92, DRAGONITE, 0
	db $FF, 85, GENGAR, 86, TAUROS, 87, EXEGGUTOR, 89, ARCANINE, 90, GYARADOS, 92, DRAGONITE, 0

ChiefData:
; none

ScientistData:
; Unused
	db 34, KOFFING, VOLTORB, 0
; Silph Co. 2F
	db 28, GRIMER, WEEZING, KOFFING, WEEZING, 0
	db 30, PORYGON, VOLTORB, MAGNETON, 0
; Silph Co. 3F/Mansion 1F
	db 35, ELECTRODE, WEEZING, 0
; Silph Co. 4F
	db 36, ELECTRODE, MAGMAR, 0
; Silph Co. 5F
	db 29, MAGNETON, KOFFING, WEEZING, PORYGON, 0
; Silph Co. 6F
	db 27, VOLTORB, KOFFING, MAGNETON, MAGNEMITE, DITTO, 0
; Silph Co. 7F
	db 29, ELECTRODE, MUK, 0
; Silph Co. 8F
	db 31, GRIMER, ELECTRODE, 0
; Silph Co. 9F
	db 29, VOLTORB, KOFFING, MAGNETON, 0
; Silph Co. 10F
	db 31, MAGNEMITE, KOFFING, CLEFABLE, 0
; Mansion 3F
	db 40, MAGNEMITE, MAGNETON, DRATINI, 0
; Mansion B1F
	db 41, MAGNEMITE, ELECTRODE, PORYGON, 0

GiovanniData:
; Rocket Hideout B4F
	db $FF, 30, ONIX, 30, RHYHORN, 31, PERSIAN, 0
; Silph Co. 11F
	db $FF, 41, NIDORINO, 39, KANGASKHAN, 41, PERSIAN, 41, RHYHORN, 43, NIDOQUEEN, 0
; Viridian Gym
	db $FF, 50, DUGTRIO, 52, RHYHORN, 53, PERSIAN, 55, NIDOQUEEN, 55, NIDOKING, 58, RHYDON, 0

RocketData:
; Mt. Moon B2F
	db 13, RATTATA, ZUBAT, 0
	db 11, SANDSHREW, RATTATA, ZUBAT, 0
	db 12, ZUBAT, EKANS, 0
	db 16, RATICATE, 0
; Cerulean City
	db 20, MACHOP, DROWZEE, 0
; Route 24
	db 15, EKANS, ZUBAT, 0
; Game Corner
	db 20, RATICATE, ZUBAT, 0
; Rocket Hideout B1F
	db 22, DROWZEE, MACHOP, 0
	db 22, RATICATE, RATICATE, 0
	db 20, GRIMER, KOFFING, KOFFING, 0
	db 21, RATTATA, RATICATE, RATICATE, 0
	db 23, GRIMER, KOFFING, 0
; Rocket Hideout B2F
	db 19, ZUBAT, KOFFING, GRIMER, RATICATE, 0
; Rocket Hideout B3F
	db 21, RATTATA, RATICATE, DROWZEE, 0
	db 24, MACHOP, MACHOP, 0
; Rocket Hideout B4F
	db 25, SANDSHREW, EKANS, SANDSLASH, 0
	db 24, EKANS, SANDSHREW, ARBOK, 0
	db 23, KOFFING, ZUBAT, 0
; Pokémon Tower 7F
	db 25, ZUBAT, ZUBAT, GOLBAT, 0
	db 26, KOFFING, DROWZEE, 0
	db 23, ZUBAT, RATTATA, RATICATE, ZUBAT, 0
; Unused
	db 26, DROWZEE, KOFFING, 0
; Silph Co. 2F
	db 33, CUBONE, ZUBAT, 0
	db 31, ZUBAT, RATICATE, GOLBAT, 0
; Silph Co. 3F
	db 30, RATICATE, HYPNO, MAGMAR, 0
; Silph Co. 4F
	db 32, MACHOP, DROWZEE, 0
	db 30, EKANS, ZUBAT, CUBONE, 0
; Silph Co. 5F
	db 36, ARBOK, 0
	db 36, HYPNO, 0
; Silph Co. 6F
	db 32, MACHOP, MACHOKE, 0
	db 31, ZUBAT, ZUBAT, GOLBAT, 0
; Silph Co. 7F
	db 28, RATICATE, ARBOK, KOFFING, GOLBAT, 0
	db 33, CUBONE, MAROWAK, 0
	db 33, SANDSHREW, SANDSLASH, 0
; Silph Co. 8F
	db 29, RATICATE, ZUBAT, GOLBAT, 0
	db 30, WEEZING, GOLBAT, KOFFING, 0
; Silph Co. 9F
	db 31, DROWZEE, GRIMER, MAGMAR, 0
	db 30, GOLBAT, DROWZEE, HYPNO, 0
; Silph Co. 10F
	db 37, MACHOKE, 0
; Silph Co. 11F
	db 30, OMASTAR, KABUTOPS, 0
	db 34, CUBONE, DROWZEE, MAROWAK, 0
; Jessie & James
	db 14, EKANS, MEOWTH, KOFFING, 0
	db 30, KOFFING, MEOWTH, EKANS, 0
	db 35, MEOWTH, ARBOK, WEEZING, LICKITUNG, VICTREEBEL, 0
	db 45, WEEZING, ARBOK, LICKITUNG, VICTREEBEL, MEOWTH, 0
; Unused
	db 16, KOFFING, 0
	db 27, KOFFING, 0
	db 29, WEEZING, 0
	db 33, WEEZING, 0

CooltrainerMData:
; Viridian Gym
	db 46, NIDORINO, NIDOKING, 0
; Victory Road 3F
	db 47, EXEGGUTOR, CLOYSTER, ARCANINE, KABUTOPS, 0
	db 47, KINGLER, TENTACRUEL, BLASTOISE, OMASTAR, 0
; Unused
	db 45, KINGLER, STARMIE, 0
; Victory Road 1F
	db 40, VAPOREON, JOLTEON, FLAREON, VENUSAUR, BLASTOISE, CHARIZARD, 0
; Unused
	db 44, IVYSAUR, WARTORTLE, CHARMELEON, 0
	db 49, NIDOKING, 0
	db 44, KINGLER, CLOYSTER, 0
; Viridian Gym
	db 46, SANDSLASH, DUGTRIO, 0
	db 47, RHYHORN, 0
; Way Of Fish BF
	db 32, MAGIKARP, GOLDEEN, HORSEA, ARROKUDA, 0

CooltrainerFData:
; Celadon Gym
	db 26, WEEPINBELL, GLOOM, IVYSAUR, 0
; Victory Road 3F
	db 48, BELLSPROUT, WEEPINBELL, VICTREEBEL, 0
	db 47, PARASECT, DEWGONG, CHANSEY, 0
; Unused
	db 46, VILEPLUME, BUTTERFREE, 0
; Victory Road 1F
	db 48, PERSIAN, NINETALES, RAICHU, 0
; Unused
	db 45, IVYSAUR, VENUSAUR, 0
	db 45, NIDORINA, NIDOQUEEN, 0
	db 43, PERSIAN, NINETALES, RAICHU, 0

BrunoData:
	db $FF, 58, ONIX, 57, HITMONCHAN, 57, HITMONLEE, 58, GOLEM, 61, MACHAMP, 0

BrockData:
	db $FF, 15, GEODUDE, 16, ONIX, 0

MistyData:
	db $FF, 17, PSYDUCK, 19, STARYU, 21, STARMIE, 0

LtSurgeData:
	db $FF, 21, VOLTORB, 18, PIKATWO, 26, RAICHU, 0

ErikaData:
	db $FF, 30, GLOOM, 30, TANGELA, 31, VICTREEBEL, 32, VILEPLUME, 0

KogaData:
	db $FF, 45, KOFFING, 47, VENONAT, 48, VENONAT, 46, MUK, 51, VENOMOTH, 0

BlaineData:
	db $FF, 45, GROWLITHE, 50, MAGMAR, 51, NINETALES, 53, RAPIDASH, 56, ARCANINE, 0

SabrinaData:
	db $FF, 48, MR_MIME, 49, JYNX, 47, HYPNO, 50, KADABRA, 52, ALAKAZAM, 0

GentlemanData:
; SS Anne 1F Rooms
	db 18, GROWLITHE, GROWLITHE, 0
	db 19, NIDORAN_M, NIDORAN_F, 0
; SS Anne 2F Rooms/Vermilion Gym
	db 22, VOLTORB, MAGNEMITE, PIKATWO, 0
; Unused
	db 48, PRIMEAPE, 0
; SS Anne 2F Rooms
	db 17, GROWLITHE, PONYTA, DRATINI, 0

Rival2Data:
; SS Anne 2F
	db $FF, 20, SPEAROW, 19, RATTATA, 20, SANDSHREW, 21, ARROKUDA, 0
; Pokémon Tower 2F
	db $FF, 26, FEAROW, 24, MAGNEMITE, 23, VULPIX, 22, SANDSHREW, 25, ARROKUDA, 0
	db $FF, 26, FEAROW, 24, MAGNEMITE, 23, VULPIX, 22, SANDSHREW, 25, ARROKUDA, 0
	db $FF, 26, FEAROW, 24, MAGNEMITE, 23, VULPIX, 22, SANDSHREW, 25, ARROKUDA, 0
; Silph Co. 7F
	db $FF, 40, SANDSLASH, 39, NINETALES, 38, MAGNETON, 38, KADABRA, 43, BARASKEWDA, 0
	db $FF, 40, SANDSLASH, 39, NINETALES, 38, MAGNETON, 38, KADABRA, 43, BARASKEWDA, 0
	db $FF, 40, SANDSLASH, 39, NINETALES, 38, MAGNETON, 38, KADABRA, 43, BARASKEWDA, 0
; Route 22
	db $FF, 50, SANDSLASH, 48, EXEGGCUTE, 49, NINETALES, 49, MAGNETON, 51, KADABRA, 54, BARASKEWDA, 0
	db $FF, 50, SANDSLASH, 48, EXEGGCUTE, 49, NINETALES, 49, MAGNETON, 51, KADABRA, 54, BARASKEWDA, 0
	db $FF, 50, SANDSLASH, 48, EXEGGCUTE, 49, NINETALES, 49, MAGNETON, 51, KADABRA, 54, BARASKEWDA, 0

Rival3Data:
	db $FF, 64, SANDSLASH, 63, ALAKAZAM, 66, EXEGGUTOR, 64, MAGNETON, 67, NINETALES, 70, BARASKEWDA, 0
	db $FF, 64, SANDSLASH, 63, ALAKAZAM, 66, EXEGGUTOR, 64, MAGNETON, 67, NINETALES, 70, BARASKEWDA, 0
	db $FF, 64, SANDSLASH, 63, ALAKAZAM, 66, EXEGGUTOR, 64, MAGNETON, 67, NINETALES, 70, BARASKEWDA, 0

LoreleiData:
	db $FF, 56, DEWGONG, 55, CLOYSTER, 56, SLOWBRO, 58, JYNX, 58, LAPRAS, 0

ChannelerData:
; Unused
	db 22, GASTLY, 0
	db 24, GASTLY, 0
	db 23, GASTLY, GASTLY, 0
	db 24, GASTLY, 0
; Pokémon Tower 3F
	db 24, GASTLY, 0
	db 25, GASTLY, 0
; Unused
	db 24, HAUNTER, 0
; Pokémon Tower 3F
	db 25, GASTLY, 0
; Pokémon Tower 4F
	db 26, GASTLY, 0
	db 24, GASTLY, GASTLY, 0
; Unused
	db 24, GASTLY, 0
; Pokémon Tower 4F
	db 25, GASTLY, 0
; Unused
	db 24, GASTLY, 0
; Pokémon Tower 5F
	db 27, HAUNTER, 0
; Unused
	db 24, GASTLY, 0
; Pokémon Tower 5F
	db 27, DITTO, 0
	db 26, GASTLY, 0
	db 27, HAUNTER, 0
; Pokémon Tower 6F
	db 24, GASTLY, GASTLY, GASTLY, 0
	db 25, GASTLY, 0
	db 26, GASTLY, 0
; Saffron Gym
	db 37, GASTLY, HAUNTER, 0
	db 40, HAUNTER, 0
	db 35, GASTLY, GASTLY, HAUNTER, 0

AgathaData:
	db $FF, 61, HAUNTER, 58, GOLBAT, 58, WEEZING, 59, ARBOK, 61, GENGAR, 0

LanceData:
	db $FF, 60, GYARADOS, 58, SEADRA, 58, DRAGONAIR, 62, AERODACTYL, 65, DRAGONITE, 0
