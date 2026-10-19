@wrapMethod
function GiveMerchantRandomGwintCardToPlayerQuest( merchantTag : name )
{
	var newCards   : array<name>;
	var available  : array<name>;
	var selected   : name;
	var i          : int;
	
	wrappedMethod( merchantTag );
	
	if( FactsQuerySum( "merchant_card_" + merchantTag + "_card_already_given" ) >= 1 )
	{
		return;
	}
	
	newCards.PushBack( 'gwint_card_witch_hunter' );
	newCards.PushBack( 'gwint_card_ballista_officer' );
	newCards.PushBack( 'gwint_card_siege_tower2' );

	for( i = 0; i < newCards.Size(); i += 1 )
	{
		if( FactsQuerySum( "merchant_card_" + newCards[i] + "_already_given" ) == 0 )
		{
			available.PushBack( newCards[i] );
		}
	}
	
	if( available.Size() > 0 )
	{
		selected = available[ RandRange( available.Size() ) ];

		FactsAdd( "merchant_card_" + selected + "_already_given", 1, -1 );
		FactsAdd( "merchant_card_" + merchantTag + "_card_already_given", 1, -1 );

		thePlayer.inv.AddAnItem( selected, 1, true, true );
	}
	else
	{
		//Materials Fix
		AddRandomCraftingComponentsGwintQuest( merchantTag );
	}
}