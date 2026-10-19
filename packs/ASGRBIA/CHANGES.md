# Combined changes

Compared with the base XML. Normal and NG+ definitions are identical.

| Index | Card | Source | Changes |
| --- | --- | --- | --- |
| 7 | geralt | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SUMMON_CLONES"}]; power: "15" → "14"; summonFlags: null → [{"name": "roach"}] |
| 8 | vesemir | Simple Gwent Rework | power: "6" → "8" |
| 10 | ciri | Simple Gwent Rework | type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}, {"name": "TYPE_RANGED"}] |
| 11 | triss | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_RANGED_SCORCH"}]; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_RANGED"}] |
| 13 | zoltan | Simple Gwent Rework | power: "5" → "6" |
| 14 | emiel | Simple Gwent Rework | dlcPicture: "neu_emiel_dlc" → null; dlcPictureFlag_name: "dlc8" → null; effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SUICIDE_SUMMON"}]; summonFlags: null → [{"name": "emiel_summoned"}] |
| 17 | olgierd | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] → [{"name": "EFFECT_SUICIDE_SUMMON"}]; summonFlags: null → [{"name": "olgierd_summoned"}] |
| 18 | mrmirror | Simple Gwent Rework | faction_index: "F_NEUTRAL" → "F_NO_MANS_LAND"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_SIEGE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] |
| 19 | mrmirror_foglet | Simple Gwent Rework | faction_index: "F_NEUTRAL" → "F_NO_MANS_LAND"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 26 | emiel_summoned | Simple Gwent Rework | description: "gwint_desc_geralt" → "gwint_desc_emiel"; dlcPicture: "neu_geralt_dlc" → null; dlcPictureFlag_name: "dlc8" → null; effect_flags: [{"name": "EFFECT_SUMMON_CLONES"}] → [{"name": "EFFECT_NONE"}]; item: "" → null; name: "geraltGOG" → "emiel_summoned"; picture: "neu_geralt" → "neu_emiel_dlc"; power: "15" → "12"; summonFlags: [{"name": "roach"}] → null; title: "gwint_name_geralt" → "gwint_name_emiel"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 27 | olgierd_summoned | Simple Gwent Rework | description: "gwint_desc_ciri" → "gwint_desc_olgierd"; dlcPicture: "neu_ciri_dlc" → null; dlcPictureFlag_name: "dlc8" → null; effect_flags: [{"name": "EFFECT_SUMMON_CLONES"}] → [{"name": "EFFECT_NONE"}]; name: "ciriGOG" → "olgierd_summoned"; picture: "neu_ciri" → "neu_olgierd"; power: "15" → "6"; summonFlags: [{"name": "roach"}] → null; title: "gwint_name_ciri" → "gwint_name_olgierd"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}, {"name": "TYPE_RANGED"}] |
| 100 | vernon | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SUMMON_CLONES"}]; power: "10" → "6"; summonFlags: null → [{"name": "ves"}]; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 103 | philippa | Simple Gwent Rework | power: "10" → "8"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}, {"name": "TYPE_HERO"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] |
| 108 | yarpen | Simple Gwent Rework | power: "2" → "4" |
| 112 | sile | Simple Gwent Rework | power: "5" → "6" |
| 113 | sabrina | Simple Gwent Rework | power: "4" → "6" |
| 114 | sheldon | Simple Gwent Rework | type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 115 | dethmold | Simple Gwent Rework | power: "6" → "5" |
| 125 | poor_infantry | BIA | item: "" → "gwint_card_poor_infantry" |
| 126 | poor_infantry2 | BIA | item: "" → "gwint_card_poor_infantry2"; picture: "nor_poor_infantry" → "nor_poor_infantry_1" |
| 127 | poor_infantry3 | BIA | item: "" → "gwint_card_poor_infantry3"; picture: "nor_poor_infantry" → "nor_poor_infantry_2" |
| 131 | crinfrid2 | BIA | picture: "nor_crinfrid" → "nor_crinfrid_1" |
| 132 | crinfrid3 | BIA | picture: "nor_crinfrid" → "nor_crinfrid_2" |
| 135 | redanian | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SAME_TYPE_MORALE"}]; power: "1" → "2"; summonFlags: null → [{"name": "redanian"}, {"name": "redanian2"}] |
| 136 | redanian2 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SAME_TYPE_MORALE"}]; power: "1" → "2"; summonFlags: null → [{"name": "redanian"}, {"name": "redanian2"}] |
| 140 | catapult | BIA | picture: "nor_catapult_1" → "nor_catapult" |
| 150 | kaedweni_siege | BIA | item: "" → "gwint_card_kaedweni_siege" |
| 151 | kaedweni_siege2 | BIA | item: "" → "gwint_card_kaedweni_siege2" |
| 152 | kaedweni_siege3 | BIA | item: "" → "gwint_card_kaedweni_siege3" |
| 160 | blue_stripes | BIA | item: null → "gwint_card_blue_stripes"; summonFlags: [{"name": "blue_stripes"}] → [{"name": "blue_stripes"}, {"name": "blue_stripes2"}, {"name": "blue_stripes3"}] |
| 161 | blue_stripes2 | BIA | New card: description: null → "gwint_desc_blue_stripes"; effect_flags: null → [{"name": "EFFECT_SAME_TYPE_MORALE"}]; faction_index: null → "F_NORTHERN_KINGDOM"; index: null → "161"; item: null → "gwint_card_blue_stripes2"; name: null → "blue_stripes2"; picture: null → "nor_blue_stripes_1"; power: null → "4"; summonFlags: null → [{"name": "blue_stripes"}, {"name": "blue_stripes2"}, {"name": "blue_stripes3"}]; title: null → "gwint_name_blue_stripes"; type_flags: null → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 162 | blue_stripes3 | BIA | New card: description: null → "gwint_desc_blue_stripes"; effect_flags: null → [{"name": "EFFECT_SAME_TYPE_MORALE"}]; faction_index: null → "F_NORTHERN_KINGDOM"; index: null → "162"; item: null → "gwint_card_blue_stripes3"; name: null → "blue_stripes3"; picture: null → "nor_blue_stripes_2"; power: null → "4"; summonFlags: null → [{"name": "blue_stripes"}, {"name": "blue_stripes2"}, {"name": "blue_stripes3"}]; title: null → "gwint_name_blue_stripes"; type_flags: null → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 171 | siege_tower2 | BIA | New card: description: null → "gwint_desc_siege_tower"; effect_flags: null → [{"name": "EFFECT_NONE"}]; faction_index: null → "F_NORTHERN_KINGDOM"; index: null → "171"; item: null → "gwint_card_siege_tower2"; name: null → "siege_tower2"; picture: null → "nor_siege_tower_1"; power: null → "6"; title: null → "gwint_name_siege_tower"; type_flags: null → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_SIEGE"}] |
| 175 | dun_banner_medic | Simple Gwent Rework | power: "5" → "3" |
| 176 | witch_hunter | BIA | New card: description: null → "gwint_desc_witch_hunter"; effect_flags: null → [{"name": "EFFECT_NONE"}]; faction_index: null → "F_NORTHERN_KINGDOM"; index: null → "176"; item: null → "gwint_card_witch_hunter"; name: null → "witch_hunter"; picture: null → "nor_witch_hunters"; power: null → "6"; title: null → "gwint_name_witch_hunter"; type_flags: null → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 177 | ballista_officer | BIA | New card: description: null → "gwint_desc_ballista_officer"; effect_flags: null → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}]; faction_index: null → "F_NEUTRAL"; index: null → "177"; item: null → "gwint_card_ballista_officer"; name: null → "ballista_officer"; picture: null → "nor_ballista_officer"; power: null → "3"; title: null → "gwint_name_ballista_officer"; type_flags: null → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_SIEGE"}] |
| 200 | letho | Simple Gwent Rework | faction_index: "F_NILFGAARD" → "F_NEUTRAL"; power: "10" → "12" |
| 201 | menno | Simple Gwent Rework | power: "10" → "8" |
| 202 | moorvran | Simple Gwent Rework | power: "10" → "8"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_SIEGE"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 203 | tibor | Simple Gwent Rework | type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}] |
| 205 | albrich | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_NURSE"}]; power: "2" → "0" |
| 206 | assire | Simple Gwent Rework | power: "6" → "5" |
| 207 | cynthia | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_NURSE"}]; power: "4" → "1" |
| 209 | morteisen | Simple Gwent Rework | power: "3" → "4" |
| 210 | rainfarn | Simple Gwent Rework | power: "4" → "5" |
| 212 | rotten | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}]; power: "3" → "2" |
| 215 | sweers | Simple Gwent Rework | power: "2" → "4" |
| 217 | vanhemar | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_NURSE"}]; power: "4" → "2" |
| 219 | vreemde | Simple Gwent Rework | power: "2" → "4" |
| 221 | puttkammer | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}]; power: "3" → "1" |
| 230 | archer_support | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NURSE"}] → [{"name": "EFFECT_NONE"}]; power: "1" → "7" |
| 231 | archer_support2 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NURSE"}] → [{"name": "EFFECT_NONE"}]; power: "1" → "7" |
| 235 | black_archer | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SAME_TYPE_MORALE"}]; power: "10" → "5"; summonFlags: null → [{"name": "black_archer"}, {"name": "black_archer2"}] |
| 236 | black_archer2 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SAME_TYPE_MORALE"}]; power: "10" → "5"; summonFlags: null → [{"name": "black_archer"}, {"name": "black_archer2"}] |
| 246 | impera_brigade2 | BIA | picture: "nil_impera_brigade" → "nil_impera_brigade_1" |
| 247 | impera_brigade3 | BIA | picture: "nil_impera_brigade" → "nil_impera_brigade_2" |
| 248 | impera_brigade4 | BIA | picture: "nil_impera_brigade" → "nil_impera_brigade_3" |
| 250 | nausicaa | BIA | picture: "nil_nauzicaa_2" → "nil_nauzicaa" |
| 251 | nausicaa2 | BIA | picture: "nil_nauzicaa_2" → "nil_nauzicaa_1" |
| 255 | combat_engineer | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}]; power: "6" → "2" |
| 265 | siege_support | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NURSE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 300 | eithne | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_NURSE"}] |
| 301 | saskia | Simple Gwent Rework | power: "10" → "8"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] |
| 302 | isengrim | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] → [{"name": "EFFECT_NONE"}]; power: "10" → "9" |
| 303 | iorveth | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}]; power: "10" → "7"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] |
| 306 | milva | Simple Gwent Rework | power: "10" → "7" |
| 307 | ida | Simple Gwent Rework | power: "6" → "8" |
| 309 | yaevinn | Simple Gwent Rework | power: "6" → "5" |
| 310 | toruviel | Simple Gwent Rework | power: "2" → "4"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}, {"name": "TYPE_RANGED"}] |
| 311 | riordain | Simple Gwent Rework | power: "1" → "3" |
| 313 | barclay | Simple Gwent Rework | type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}] |
| 325 | vrihedd_brigade | Simple Gwent Rework | power: "5" → "6" |
| 326 | vrihedd_brigade2 | Simple Gwent Rework | power: "5" → "6" |
| 330 | dol_scout | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SUMMON_CLONES"}]; power: "6" → "5"; summonFlags: null → [{"name": "dol_scout"}, {"name": "dol_scout2"}, {"name": "dol_scout3"}] |
| 331 | dol_scout2 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SUMMON_CLONES"}]; power: "6" → "5"; summonFlags: null → [{"name": "dol_scout"}, {"name": "dol_scout2"}, {"name": "dol_scout3"}] |
| 332 | dol_scout3 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_SUMMON_CLONES"}]; power: "6" → "5"; summonFlags: null → [{"name": "dol_scout"}, {"name": "dol_scout2"}, {"name": "dol_scout3"}] |
| 335 | dwarf | Simple Gwent Rework | power: "3" → "4" |
| 336 | dwarf2 | Simple Gwent Rework | power: "3" → "4" |
| 337 | dwarf3 | Simple Gwent Rework | power: "3" → "4" |
| 340 | mahakam | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 341 | mahakam2 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 342 | mahakam3 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 343 | mahakam4 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 344 | mahakam5 | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 350 | elf_skirmisher | Simple Gwent Rework | power: "2" → "3" |
| 351 | elf_skirmisher2 | Simple Gwent Rework | power: "2" → "3" |
| 352 | elf_skirmisher3 | Simple Gwent Rework | power: "2" → "3" |
| 355 | vrihedd_cadet | Simple Gwent Rework | power: "4" → "2" |
| 368 | schirru | Simple Gwent Rework | power: "8" → "7" |
| 401 | kayran | Simple Gwent Rework | power: "8" → "7"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_MELEE"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_MELEE"}, {"name": "TYPE_RANGED"}] |
| 402 | imlerith | Simple Gwent Rework | power: "10" → "13" |
| 403 | leshen | Simple Gwent Rework | power: "10" → "7"; type_flags: [{"name": "TYPE_CREATURE"}, {"name": "TYPE_HERO"}, {"name": "TYPE_RANGED"}] → [{"name": "TYPE_CREATURE"}, {"name": "TYPE_RANGED"}] |
| 413 | plague_maiden | Simple Gwent Rework | power: "5" → "4" |
| 417 | werewolf | Simple Gwent Rework | power: "5" → "4" |
| 423 | frightener | Simple Gwent Rework | power: "5" → "4" |
| 425 | ice_giant | Simple Gwent Rework | power: "5" → "8" |
| 433 | cockatrice | Simple Gwent Rework | power: "2" → "5" |
| 435 | gargoyle | Simple Gwent Rework | power: "2" → "4" |
| 440 | grave_hag | Simple Gwent Rework | power: "5" → "3" |
| 445 | fogling | Simple Gwent Rework | power: "2" → "3" |
| 447 | wyvern | Simple Gwent Rework | power: "2" → "5" |
| 470 | ghoul | Simple Gwent Rework | power: "1" → "3" |
| 471 | ghoul2 | Simple Gwent Rework | power: "1" → "3" |
| 472 | ghoul3 | Simple Gwent Rework | power: "1" → "3" |
| 500 | hemdal | Simple Gwent Rework | power: "11" → "17" |
| 501 | hjalmar | Simple Gwent Rework | effect_flags: [{"name": "EFFECT_NONE"}] → [{"name": "EFFECT_IMPROVE_NEIGHBOURS"}] |
| 502 | cerys | Simple Gwent Rework | power: "10" → "7" |
| 503 | ermion | Simple Gwent Rework | power: "8" → "7" |
| 505 | holger_blackhand | Simple Gwent Rework | power: "4" → "5" |
| 507 | donar_an_hindar | Simple Gwent Rework | power: "4" → "5" |
| 510 | blueboy_lugos | Simple Gwent Rework | power: "6" → "5" |
| 511 | svanrige | Simple Gwent Rework | power: "4" → "6" |
