@addField( CR4Player )
public var cBrothersInArms: BrothersInArms;

@addMethod(CR4Player) public function BrothersInArms_UpdateSettings() : void
{
	if (!cBrothersInArms) 
	{
		cBrothersInArms = new BrothersInArms in this;
	}
	cBrothersInArms.UpdateSettings(theGame.GetInGameConfigWrapper());
}

@wrapMethod( CR4Player ) function OnSpawned( spawnData : SEntitySpawnData )
{
	wrappedMethod( spawnData );
	BrothersInArms_UpdateSettings();
}

@wrapMethod( CR4CommonIngameMenu ) function OnClosingMenu()
{
	wrappedMethod();
	thePlayer.BrothersInArms_UpdateSettings();
}

class BrothersInArms
{
	var group1: name;
	var group2: name;
	var group3: name;
	var group4: name;
	var group5: name;
		default group1 = 'BrothersInArms_OptionalSettings';
		default group2 = 'BrothersInArms_QuestTweaksSettings';
		default group3 = 'BrothersInArms_BoatRacesSettings';
		default group4 = 'BrothersInArms_WLCSettings';
		default group5 = 'BrothersInArms_EventsSettings';
		
	public function UpdateSettings(cfg : CInGameConfigWrapper) : void
	{
		var update_counter : int;
		
		//BIA Optional Content
		update_counter += UpdateIfRequired("bia_q001_vesemir_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q001Vesemir'));
		update_counter += UpdateIfRequired("bia_q001_full_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q001Full'));
		update_counter += UpdateIfRequired("bia_q001_dune_dialogue_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q001Dune'));
		update_counter += UpdateIfRequired("bia_emhyr_gardner_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q002EmhyrGardener'));
		update_counter += UpdateIfRequired("bia_q101_crossroads_innkeeper_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_CrossroadsInnkeeper'));
		update_counter += UpdateIfRequired("bia_hendriks_puzzle_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_HendriksPuzzle'));
		update_counter += UpdateIfRequired("bia_q103_baron_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q103Baron'));
		update_counter += UpdateIfRequired("bia_q105_boy_ext_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q105Genny'));
		update_counter += UpdateIfRequired("bia_q205_crones_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q105Crones'));
		update_counter += UpdateIfRequired("bia_chess_alt_intro_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q302ChessClub'));
		update_counter += UpdateIfRequired("bia_dudus_puzzle_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_DudusPuzzle'));
		update_counter += UpdateIfRequired("bia_q203_becca_hjort_dialogue_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q203BeccaHjort'));
		update_counter += UpdateIfRequired("bia_q205_skjallscene_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q205Skjall'));
		update_counter += UpdateIfRequired("bia_eskel_forktail_ext_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q401EskelForktail'));
		update_counter += UpdateIfRequired("q401_sail_sound_clue_search_enabled", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_LambertsBoat'));
		update_counter += UpdateIfRequired("bia_q401_reunion_ext", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q401ReunionExt'));
		update_counter += UpdateIfRequired("bia_q401_puke_ext", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q401PukeExt'));
		update_counter += UpdateIfRequired("q401_cooking_enabled", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Cooking'));
		
		update_counter += UpdateIfRequired("bia_carnalsins_choice_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_CarnalSins'));
		update_counter += UpdateIfRequired("bia_q206_ext_birna_svanrige", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q206BirnaSvanrige'));
		update_counter += UpdateIfRequired("bia_q206_ext_sentence_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q206Trial'));
		update_counter += UpdateIfRequired("bia_q402_ciri_dialogue_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q402CiriDialogue'));
		update_counter += UpdateIfRequired("bia_q402_battle_traps_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_KaerMorhenBattleTraps'));
		update_counter += UpdateIfRequired("bia_battle_km_gmpl_chat_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q403Battle'));
		
		update_counter += UpdateIfRequired("bia_q311_avallach_corinne_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q311_AvallachCorinne'));
		update_counter += UpdateIfRequired("bia_q210_signal_bonfire_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q210SignalBonfire'));
		update_counter += UpdateIfRequired("bia_q210_skjall_grave_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_SkjallsGrave'));
		update_counter += UpdateIfRequired("bia_q501_ciri_lines_cs_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q501CiriWH'));
		update_counter += UpdateIfRequired("bia_q502_emhyr_lodge_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q502LodgeArrest'));
		update_counter += UpdateIfRequired("bia_q505_alternate_ciri_ending_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q505_CiriEnding'));
		
		update_counter += UpdateIfRequired("bia_sq106_lambert_vampire_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_SQ106LambertEkimma'));
		update_counter += UpdateIfRequired("bia_sq202_yen_back_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_SQ202YenGetBack'));
		update_counter += UpdateIfRequired("bia_q205_yengoodbye_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_SQ202YenGoodbye'));
		
		update_counter += UpdateIfRequired("bia_prolog_human_smith_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_HumanSmith'));
		update_counter += UpdateIfRequired("bia_mq0003_wraith_ext_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_MQ0003Noonwraith'));
		update_counter += UpdateIfRequired("bia_mq1058_delay_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_MQ1058Delay'));
		
		update_counter += UpdateIfRequired("bia_q601_mirror_ext", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q601MirrorExt'));
		update_counter += UpdateIfRequired("bia_q602_wedding_ext", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q602WeddingExt'));
		update_counter += UpdateIfRequired("bia_q602_shani_no_shoes", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q602ShaniNoShoes'));
		update_counter += UpdateIfRequired("bia_q603_smoke_ext", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q603SmokeExt'));
		update_counter += UpdateIfRequired("bia_q604_ext", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q604Ext'));
		update_counter += UpdateIfRequired("bia_shani_death", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q605ShaniDeath'));
		update_counter += UpdateIfRequired("mq6005_painite_enabled", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Painite'));
		
		update_counter += UpdateIfRequired("bia_notice_board_quests_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_NoticeBoardQuests'));
		update_counter += UpdateIfRequired("bia_toderas_village_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_ToderasVillage'));
		update_counter += UpdateIfRequired("bia_condyle_village_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_CondyleVillage'));
		update_counter += UpdateIfRequired("bia_plague_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Plague'));
		update_counter += UpdateIfRequired("bia_sk41_prison_island_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_SK41PrisonIsland'));
		update_counter += UpdateIfRequired("bia_carduin_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Carduin'));
		update_counter += UpdateIfRequired("bia_characters_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Characters'));
		update_counter += UpdateIfRequired("bia_crows_perch_stables_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_CrowsPerchStables'));
		update_counter += UpdateIfRequired("bia_q705_hide_guests_packages", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_Q705GuestsPackages'));
		update_counter += UpdateIfRequired("bia_oxenfurt_vocal_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_OxenfurtVocals'));
		update_counter += UpdateIfRequired("bia_tawny_owl_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_TawnyOwl'));
		update_counter += UpdateIfRequired("bia_relic_weapons_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_RelicWeapons'));
		update_counter += UpdateIfRequired("bia_secondary_weapons_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_SecondaryWeapons'));
		update_counter += UpdateIfRequired("bia_unique_gwent_textures_on", (int)(bool)cfg.GetVarValue(group1, 'BrothersInArms_UniqueGwentTextures'));
		
		
		//Quest Tweaks
		update_counter += UpdateIfRequired("qutw_mq3024_crossings_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_ThouShaltNotPass'));
		update_counter += UpdateIfRequired("qutw_casino_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_GetJuniorCasino'));
		update_counter += UpdateIfRequired("qutw_no_free_ft_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_NoFreeFastTravel'));
		update_counter += UpdateIfRequired("qutw_mysterious_passenger_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_MysteriousPassenger'));
		update_counter += UpdateIfRequired("sq306_gwint_games_shortcuts", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_SQ306Shortcuts'));
		update_counter += UpdateIfRequired("qutw_iron_maiden_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_IronMaiden'));
		update_counter += UpdateIfRequired("qutw_q605_riddle_timer_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_Q605Riddle'));
		update_counter += UpdateIfRequired("qutw_q704_unseen_cave_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_UnseenElderCave'));
		update_counter += UpdateIfRequired("qutw_q704_unseen_questions_on", (int)(bool)cfg.GetVarValue(group2, 'QuestTweaks_UnseenElderQuestions'));
				
		
		//Boat Races
		update_counter += UpdateIfRequired("boat_races_on", (int)(bool)cfg.GetVarValue(group3, 'BoatRaces_Enabled'));
		update_counter += UpdateIfRequired("boat_races_story_mode_on", (int)(bool)cfg.GetVarValue(group3, 'BoatRaces_StoryMode'));
		
		
		//Events
		update_counter += UpdateIfRequired("dlcevents_on", (int)(bool)cfg.GetVarValue(group5, 'Events_Enabled'));
		
		update_counter += UpdateIfRequired("dlcevents_off", (int)(bool)cfg.GetVarValue(group5, 'Events_Disabled'));
		
		update_counter += UpdateIfRequired("mq1006_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1006Done'));
		update_counter += UpdateIfRequired("mq1007_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1007Done'));
		update_counter += UpdateIfRequired("mq1011_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1011Done'));
		update_counter += UpdateIfRequired("mq1014_1_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1014_1Done'));
		update_counter += UpdateIfRequired("mq1014_2_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1014_2Done'));
		update_counter += UpdateIfRequired("mq1014_3_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1014_3Done'));
		update_counter += UpdateIfRequired("mq1026_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1026Done'));
		update_counter += UpdateIfRequired("mq1033_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1033Done'));
		update_counter += UpdateIfRequired("mq1035_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1035Done'));
		update_counter += UpdateIfRequired("mq1036_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1036Done'));
		update_counter += UpdateIfRequired("mq1037_1_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1037_1Done'));
		update_counter += UpdateIfRequired("mq1037_2_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1037_2Done'));
		update_counter += UpdateIfRequired("mq1037_3_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1037_3Done'));
		update_counter += UpdateIfRequired("mq1038_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1038Done'));
		update_counter += UpdateIfRequired("mq1041_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1041Done'));
		update_counter += UpdateIfRequired("mq1043_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1043Done'));
		update_counter += UpdateIfRequired("mq1044_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ1044Done'));
		update_counter += UpdateIfRequired("mq3001_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3001Done'));
		update_counter += UpdateIfRequired("mq3004_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3004Done'));
		update_counter += UpdateIfRequired("mq3007_1_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3007_1Done'));
		update_counter += UpdateIfRequired("mq3007_2_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3007_2Done'));
		update_counter += UpdateIfRequired("mq3008_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3008Done'));
		update_counter += UpdateIfRequired("mq3009_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3009Done'));
		update_counter += UpdateIfRequired("mq3015_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3015Done'));
		update_counter += UpdateIfRequired("mq3023_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3023Done'));
		update_counter += UpdateIfRequired("mq3040_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ3040Done'));
		update_counter += UpdateIfRequired("mq2003_3_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2023_3Done'));
		update_counter += UpdateIfRequired("mq2016_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2016Done'));
		update_counter += UpdateIfRequired("mq2019_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2019Done'));
		update_counter += UpdateIfRequired("mq2021_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2021Done'));
		update_counter += UpdateIfRequired("mq2034_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2034Done'));
		update_counter += UpdateIfRequired("mq2050_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2050Done'));
		update_counter += UpdateIfRequired("mq2052_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ2052Done'));
		update_counter += UpdateIfRequired("mq4001_quest_done", (int)(bool)cfg.GetVarValue(group5, 'Events_MQ4001Done'));
	}
	
	private function UpdateIfRequired(FactName : string, CurrentValue: int) : int
	{
		if (!FactsDoesExist(FactName) || FactsQuerySum(FactName) != CurrentValue)
		{
			FactsSet(FactName, CurrentValue);
			return 1;
		}
		return 0;
	}
}
