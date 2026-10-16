# Gwent changes — clarified specification

This is a review document, not an implemented XML update.
Starting point: version 1.4 removed Olgierd morale boost.xml.
Original comparison reference: base/def_gwint_cards_final.xml.

## Rules

- Indices identify the exact XML definitions. Display names are explanatory.
- Power values below are final base strength, not increases or decreases.
- Keep every unmentioned attribute, row, faction, Hero flag, ability, and summon relationship unchanged from version 1.4.
- Apply grouped changes to every listed index. This does not change inventory quantities or create additional definitions.
- “Melee only” or “ranged only” replaces existing placement options. “Agile” means both melee and ranged.
- Removing Hero removes TYPE_HERO only; it does not remove other abilities.
- Medic = EFFECT_NURSE; Morale Boost = EFFECT_IMPROVE_NEIGHBOURS; Tight Bond = EFFECT_SAME_TYPE_MORALE; Muster = EFFECT_SUMMON_CLONES; Mardroeme = EFFECT_MUSHROOM.
- When an ability replaces “no ability,” replace EFFECT_NONE rather than retaining both.
- Preserve internal names unless explicitly specified. Olgierd's shared internal name is retained as requested; its targeting remains a verification issue below.
- Keep base/, working copy.xml, and previous versions unchanged. Any future implementation must be a new numbered XML file with a short descriptive filename.

## Monsters

| Index | Card | Final power | Requested change |
|---|---|---:|---|
| 400 | Draug | 9 | Power only |
| 402 | Imlerith | 13 | Power only |
| 413 | Plague Maiden | 4 | Power only |
| 417 | Werewolf | 4 | Power only |
| 445 | Foglet (`fogling`) | 3 | Power only |
| 470–472 | Ghouls | 3 each | Keep existing Muster group |
| 423 | Frightener | 4 | Power only |
| 401 | Kayran | 7 | Remove Hero; keep agility and Morale Boost |
| 14 | Emiel Regis (`emiel`) | 9 | Move from neutral to Monsters (F_NO_MANS_LAND); add Muster targeting indices 460–464: ekkima, fleder, garkain, bruxa, katakan |
| 403 | Leshen | 7 | Remove Hero; remain ranged |
| 433 | Cockatrice | 5 | Power only |
| 447 | Wyvern | 5 | Power only |
| 435 | Gargoyle | 4 | Power only |
| 440 | Grave Hag | 3 | Power only |
| 425 | Ice Giant | 8 | Power only |
| 18 | Gaunter O'Dimm (`mrmirror`) | 2 | Siege → ranged only; move from neutral to Monsters (F_NO_MANS_LAND); retain existing summon relationship |
| 19 | Gaunter O'Dimm: Darkness (`mrmirror_foglet`) | 4 | Ranged → melee only; move from neutral to Monsters; retain existing Muster relationship |

Regis interpretation for review: only Regis gains the ability to summon the existing Vampire group. Existing Vampires do not gain Regis as a target unless separately requested.
Both Gaunter O'Dimm (index 18) and Gaunter O'Dimm: Darkness (index 19) move to Monsters, per the updated request.

## Northern Realms

| Index | Card | Final power | Requested change |
|---|---|---:|---|
| 103 | Philippa Eilhart | 8 | Remove Hero |
| 100 | Vernon Roche (`vernon`) | 6 | Remove Hero; add Muster targeting Ves (`ves`, index 106) |
| 106 | Ves | 5 | Target of Roche's summon; no reciprocal summon ability |
| 114 | Sheldon Skaggs | 4 | Ranged → melee only |
| 108 | Yarpen Zigrin | 4 | Power only |
| 175 | Dun Banner Medic | 3 | Keep Medic |
| 135, 136 | Redanian Foot Soldiers | 2 each | Add Tight Bond; both reference the same two-member group: redanian, redanian2 |

Roche interpretation for review: use normal Muster, not the Cow's death-triggered summon. No additional cards are intended to be summoned.

## Nilfgaard

| Index | Card | Final power | Requested change |
|---|---|---:|---|
| 201 | Menno Coehoorn | 8 | Keep Hero and Medic |
| 203 | Tibor Eggebracht (`tibor`) | 10 | Ranged → melee only; keep Hero |
| 202 | Morvran Voorhis (`moorvran`) | 8 | Siege → melee only; remove Hero |
| 230, 231 | Etolian Auxiliary Archers | 7 each | Remove Medic; no remaining special ability |
| 208 | Fringilla Vigo | 7 | Power only |
| 235, 236 | Black Infantry Archers | 5 each | Add Tight Bond; both reference black_archer and black_archer2 |
| 210 | Rainfarn | 5 | Power only |
| 217 | Vanhemar | 4 | Add Medic |
| 215 | Sweers | 4 | Power only |
| 219 | Vreemde | 4 | Power only |
| 209 | Morteisen | 4 | Power only |
| 207 | Cynthia | 3 | Add Medic |
| 255 | Siege Engineer (`combat_engineer`) | 2 | Add Morale Boost; originally has no ability |
| 212 | Rotten Mangonel | 2 | Add Morale Boost |
| 205 | Albrich | 2 | Add Medic |
| 221 | Puttkammer | 1 | Add Morale Boost; remain ranged |
| 265 | Siege Technician (`siege_support`) | 0 | Replace Medic with Morale Boost |

Siege Engineer and Siege Technician are distinct cards; do not interchange their indices.
Letho's move to neutral is specified in the Neutral section.

## Scoia'tael

| Index | Card | Final power | Requested change |
|---|---|---:|---|
| 302 | Isengrim Faoiltiarna | 7 | Remove Morale Boost; keep Hero |
| 313 | Barclay Els | 6 | Agile → melee only |
| 309 | Yaevinn | 5 | Keep agility |
| 340–344 | Mahakam Defenders | 5 each | Add Morale Boost to all five definitions |
| 335–337 | Dwarven Skirmishers | 4 each | Keep existing Muster group |
| 325, 326 | Vrihedd Brigade Veterans | 6 each | Keep agility |
| 330–332 | Dol Blathanna Scouts | 5 each | Keep agility |
| 300 | Eithné | 11 | Add Medic; keep Hero |
| 301 | Saesenthessis (`saskia`) | 8 | Remove Hero; remain ranged |
| 306 | Milva | 7 | Keep Morale Boost |
| 303 | Iorveth | 7 | Remove Hero; add Morale Boost; remain ranged |
| 360 | Dol Blathanna Archer | 4 | Already 4; no change required |
| 310 | Toruviel | 4 | Ranged → agile |
| 350–352 | Elven Skirmishers | 3 each | Keep existing Muster group |
| 311 | Riordain (`riordain`) | 3 | Power only |
| 355 | Vrihedd Brigade Recruit (`vrihedd_cadet`) | 2 | Power only |
| 368 | Schirrú | 7 | Keep siege placement and existing siege Scorch |

## Neutral

| Index | Card | Final power | Requested change |
|---|---|---:|---|
| 10 | Ciri | 15 | Agile; no Roach summon; already matches this in version 1.4 |
| 27 | Ciri GOG (`ciriGOG`) | 15 | Proposed duplicate handling: make agile and remove Roach summon and its summonFlags; keep Hero |
| 7 | Geralt | 14 | Keep Hero, melee placement, and Roach summon; already matches this in version 1.4 |
| 8 | Vesemir | 8 | Power only |
| 11 | Triss Merigold | 7 | Add EFFECT_RANGED_SCORCH; keep Hero and melee placement |
| 17 | Olgierd — summoned form | 6 | Agile; no ability; retain name="olgierd"; already matches version 1.4 |
| 26 | Olgierd — summoning form | 6 | Agile; EFFECT_SUICIDE_SUMMON with summonFlags target "olgierd"; retain name="olgierd"; already matches version 1.4 |
| 13 | Zoltan Chivay | 6 | Power only |
| 200 | Letho of Gulet | 12 | Move from Nilfgaard to neutral; keep Hero and melee placement |

Index 26 is the repurposed former geraltGOG entry. Do not restore it to Geralt or apply Geralt changes to it.
The index 27 proposal applies the Ciri rule consistently to both surviving Ciri definitions; the original text did not explicitly identify this index.
“Ranged Scorch” describes the row Triss attacks, not her placement. Use the existing Toad ability flag, EFFECT_RANGED_SCORCH.

## Skellige

| Index | Card | Final power | Requested change |
|---|---|---:|---|
| 500 | Hemdall (`hemdal`) | 17 | Keep Hero; also affects the form summoned by Kambi |
| 501 | Hjalmar | 10 | Add Morale Boost; keep Hero and ranged placement |
| 509 | Birna Bran | 2 | Replace Medic with Mardroeme; remain melee |
| 503 | Ermion | 7 | Replace Mardroeme with Medic; keep Hero and ranged placement |
| 511 | Svanrige | 6 | Power only |
| 510 | Blueboy Lugos | 5 | Power only |
| 507 | Donar an Hindar | 5 | Power only |
| 505 | Holger Blackhand | 5 | Power only |

## Remaining decisions and verification

These are not silently resolved by editing the wording:

1. Olgierd targeting: indices 17 and 26 must retain the same internal name per the user's instruction. The summon flag names "olgierd", not index 17. Unique resolution to index 17 cannot be guaranteed from this XML alone. Inspect engine behavior or test in game before claiming the target is correct. Do not rename either entry without authorization.
2. Olgierd timing: use the Cow's EFFECT_SUICIDE_SUMMON behavior. Do not promise triggering on every destruction, Scorch, or removal event without verifying the game's implementation. Index 17 has no summon ability, so the intended design is a single transition, not a loop.
3. Gaunter faction move: both Gaunter and Darkness belong to Monsters. Verify collection availability, deck inclusion, and the existing summon relationship after the faction changes.
4. Proposed interpretations: Ciri's index 27 treatment, one-way Regis summoning, and Roche's standard Muster are explicit recommendations, not previously confirmed instructions.
5. Collection availability, item bindings, localization, card art, leader abilities, faction passives, and AI decks are outside these requested XML changes. Verify faction moves and repurposed cards in game; XML parsing alone cannot establish usability.

No changes from this document have been applied to any XML file.
