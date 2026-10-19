// Exclude random card rewards that have reached their XML-defined collection limit.
// Record the existing per-item reward facts before either reward pool is evaluated.
@wrapMethod
function GiveMerchantRandomGwintCardToPlayerQuest( merchantTag : name )
{
	var cards : array<name>;
	var i : int;

	if( FactsQuerySum( "merchant_card_" + merchantTag + "_card_already_given" ) == 0 )
	{
		// Vanilla reward pool.
		cards.PushBack( 'gwint_card_fog' );
		cards.PushBack( 'gwint_card_frost' );
		cards.PushBack( 'gwint_card_rain' );
		cards.PushBack( 'gwint_card_clear_sky' );
		cards.PushBack( 'gwint_card_arachas_behemoth' );
		cards.PushBack( 'gwint_card_assire' );
		cards.PushBack( 'gwint_card_filavandrel' );
		cards.PushBack( 'gwint_card_cahir' );
		cards.PushBack( 'gwint_card_celaeno_harpy' );
		cards.PushBack( 'gwint_card_ciaran' );
		cards.PushBack( 'gwint_card_cockatrice' );
		cards.PushBack( 'gwint_card_crone_brewess' );
		cards.PushBack( 'gwint_card_dennis' );
		cards.PushBack( 'gwint_card_dol_dwarf2' );
		cards.PushBack( 'gwint_card_dol_dwarf3' );
		cards.PushBack( 'gwint_card_dol_infantry2' );
		cards.PushBack( 'gwint_card_dol_infantry3' );
		cards.PushBack( 'gwint_card_elf_skirmisher2' );
		cards.PushBack( 'gwint_card_elf_skirmisher3' );
		cards.PushBack( 'gwint_card_emiel' );
		cards.PushBack( 'gwint_card_endrega' );
		cards.PushBack( 'gwint_card_fire_elemental' );
		cards.PushBack( 'gwint_card_forktail' );
		cards.PushBack( 'gwint_card_frightener' );
		cards.PushBack( 'gwint_card_gargoyle' );
		cards.PushBack( 'gwint_card_garkain' );
		cards.PushBack( 'gwint_card_ghoul2' );
		cards.PushBack( 'gwint_card_ghoul3' );
		cards.PushBack( 'gwint_card_grave_hag' );
		cards.PushBack( 'gwint_card_griffin' );
		cards.PushBack( 'gwint_card_havekar_nurse' );
		cards.PushBack( 'gwint_card_havekar_support2' );
		cards.PushBack( 'gwint_card_ida' );
		cards.PushBack( 'gwint_card_imlerith' );
		cards.PushBack( 'gwint_card_kayran' );
		cards.PushBack( 'gwint_card_toruviel' );
		cards.PushBack( 'gwint_card_nekker3' );
		cards.PushBack( 'gwint_card_philippa' );
		cards.PushBack( 'gwint_card_plague_maiden' );
		cards.PushBack( 'gwint_card_renuald' );
		cards.PushBack( 'gwint_card_riordain' );
		cards.PushBack( 'gwint_card_rotten' );
		cards.PushBack( 'gwint_card_shilard' );
		cards.PushBack( 'gwint_card_siege_tower' );
		cards.PushBack( 'gwint_card_stefan' );
		cards.PushBack( 'gwint_card_vanhemar' );
		cards.PushBack( 'gwint_card_vattier' );
		cards.PushBack( 'gwint_card_villen' );
		cards.PushBack( 'gwint_card_vreemde' );
		cards.PushBack( 'gwint_card_vrihedd_cadet' );
		cards.PushBack( 'gwint_card_wyvern' );

		// BIA fallback reward pool.
		cards.PushBack( 'gwint_card_witch_hunter' );
		cards.PushBack( 'gwint_card_ballista_officer' );
		cards.PushBack( 'gwint_card_siege_tower2' );

		for( i = 0; i < cards.Size(); i += 1 )
		{
			if( FactsQuerySum( "merchant_card_" + cards[i] + "_already_given" ) == 0 )
			{
				if( !SGRBIA_CanReceiveRandomGwentCard( cards[i] ) )
				{
					FactsAdd( "merchant_card_" + cards[i] + "_already_given", 1, -1 );
				}
			}
		}
	}

	wrappedMethod( merchantTag );
}

// An eligible reward must be unawarded and below the limit for its exact variant.
function SGRBIA_CanReceiveRandomGwentCard( itemName : name ) : bool
{
	var gwintManager : CR4GwintManager;
	var cardName : name;
	var cardDefinition : SCardDefinition;
	var minimum, maximum : SAbilityAttributeValue;
	var allowedCount, ownedCount : int;

	if( FactsQuerySum( "merchant_card_" + itemName + "_already_given" ) >= 1 )
	{
		return false;
	}

	gwintManager = theGame.GetGwintManager();
	cardName = gwintManager.GetCardNameFromItemName( itemName );
	if( cardName == '' )
	{
		return false;
	}
	if( !gwintManager.GetGwentCard( cardName, cardDefinition ) )
	{
		return false;
	}

	theGame.GetDefinitionsManager().GetItemAttributeValueNoRandom(
		itemName, false, 'max_count', minimum, maximum );
	allowedCount = RoundF( minimum.valueBase );
	ownedCount = gwintManager.GetPlayerCardCount( cardName );

	return allowedCount > 0 && ownedCount < allowedCount;
}
