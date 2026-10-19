quest function BIA_ShowTutorial (title: string, body: string, optional isHint: bool, optional hintDuration: float, optional imagePath: string)
{
    var tut: W3TutorialPopupData;
    
    tut = new W3TutorialPopupData in thePlayer;
    
    tut.managerRef = theGame.GetTutorialSystem();
    tut.messageTitle = GetLocStringByKey(title);
    tut.messageText = GetLocStringByKey(body);

    tut.autosize = true;
    tut.enableAcceptButton = true;
    tut.canBeShownInMenus = false;

    if (isHint)
    {
        tut.posX = 0;
        tut.posY = 0;        
        tut.fullscreen = false;
        tut.blockInput = false;
        tut.pauseGame = false;
        tut.imagePath = imagePath;
        tut.duration = -1; // CAREFUL: The duration is in milliseconds, not seconds!
        tut.blockInput = true;
        if (hintDuration > 0)
        {
            tut.duration = hintDuration; // CAREFUL: The duration is in milliseconds, not seconds!
            tut.enableAcceptButton = false;
            tut.blockInput = false;
        }
    } 
    else
    {        
        tut.fullscreen = true;            
        tut.blockInput = true;
        tut.pauseGame = true;
    }  
    
    theGame.GetTutorialSystem().ShowTutorialHint(tut);
}

class W3QuestCond_BIA_CheckHairWorksSettings extends CQuestScriptedCondition
{
	function Evaluate() : bool
	{
		var wrapper : CInGameConfigWrapper = theGame.GetInGameConfigWrapper();
		
		if( StringToInt(wrapper.GetVarValue('Graphics', 'Virtual_HairWorksLevel')) == 2 ) return true;
		return false;
	}
}

quest function BIA_RefreshHairWorks()
{
	var wrapper : CInGameConfigWrapper;
	
	wrapper = theGame.GetInGameConfigWrapper();
	wrapper.SetVarValue('Graphics', 'Virtual_HairWorksLevel', 0);
	wrapper.SetVarValue('Graphics', 'Virtual_HairWorksLevel', 2);
}

quest function BIA_FixGwent()
{
	var gwintManager: CR4GwintManager;
	
	gwintManager = theGame.GetGwintManager();
	
	if( theGame.GetDLCManager().IsDLCEnabled( 'GwentDeckChoice' ) )
		{
			return;
		}
	
	gwintManager.RemoveCardFromCollection('poor_infantry');
	gwintManager.RemoveCardFromCollection('poor_infantry');
	gwintManager.RemoveCardFromCollection('poor_infantry');
	gwintManager.RemoveCardFromCollection('poor_infantry2');
	gwintManager.RemoveCardFromCollection('poor_infantry2');
	gwintManager.RemoveCardFromCollection('poor_infantry2');
	gwintManager.RemoveCardFromCollection('poor_infantry3');
	gwintManager.RemoveCardFromCollection('poor_infantry3');
	gwintManager.RemoveCardFromCollection('poor_infantry3');
	gwintManager.RemoveCardFromDeck(3, 125);
	gwintManager.RemoveCardFromDeck(3, 125);
	gwintManager.RemoveCardFromDeck(3, 125);
	gwintManager.RemoveCardFromDeck(3, 126);
	gwintManager.RemoveCardFromDeck(3, 126);
	gwintManager.RemoveCardFromDeck(3, 126);
	gwintManager.RemoveCardFromDeck(3, 127);
	gwintManager.RemoveCardFromDeck(3, 127);
	gwintManager.RemoveCardFromDeck(3, 127);
	
	gwintManager.RemoveCardFromCollection('blue_stripes');
	gwintManager.RemoveCardFromCollection('blue_stripes');
	gwintManager.RemoveCardFromCollection('blue_stripes');
	gwintManager.RemoveCardFromCollection('blue_stripes2');
	gwintManager.RemoveCardFromCollection('blue_stripes2');
	gwintManager.RemoveCardFromCollection('blue_stripes2');
	gwintManager.RemoveCardFromCollection('blue_stripes3');
	gwintManager.RemoveCardFromCollection('blue_stripes3');
	gwintManager.RemoveCardFromCollection('blue_stripes3');
	gwintManager.RemoveCardFromDeck(3, 160);
	gwintManager.RemoveCardFromDeck(3, 160);
	gwintManager.RemoveCardFromDeck(3, 160);
	gwintManager.RemoveCardFromDeck(3, 161);
	gwintManager.RemoveCardFromDeck(3, 161);
	gwintManager.RemoveCardFromDeck(3, 161);
	gwintManager.RemoveCardFromDeck(3, 162);
	gwintManager.RemoveCardFromDeck(3, 162);
	gwintManager.RemoveCardFromDeck(3, 162);
	
	gwintManager.RemoveCardFromCollection('kaedweni_siege');
	gwintManager.RemoveCardFromCollection('kaedweni_siege');
	gwintManager.RemoveCardFromCollection('kaedweni_siege');
	gwintManager.RemoveCardFromCollection('kaedweni_siege2');
	gwintManager.RemoveCardFromCollection('kaedweni_siege2');
	gwintManager.RemoveCardFromCollection('kaedweni_siege2');
	gwintManager.RemoveCardFromCollection('kaedweni_siege3');
	gwintManager.RemoveCardFromCollection('kaedweni_siege3');
	gwintManager.RemoveCardFromCollection('kaedweni_siege3');
	gwintManager.RemoveCardFromDeck(3, 150);
	gwintManager.RemoveCardFromDeck(3, 150);
	gwintManager.RemoveCardFromDeck(3, 150);
	gwintManager.RemoveCardFromDeck(3, 151);
	gwintManager.RemoveCardFromDeck(3, 151);
	gwintManager.RemoveCardFromDeck(3, 151);
	gwintManager.RemoveCardFromDeck(3, 152);
	gwintManager.RemoveCardFromDeck(3, 152);
	gwintManager.RemoveCardFromDeck(3, 152);
	
	thePlayer.inv.AddAnItem( 'gwint_card_poor_infantry', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_poor_infantry2', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_poor_infantry3', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_blue_stripes', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_blue_stripes2', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_blue_stripes3', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_kaedweni_siege', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_kaedweni_siege2', 1 );
	thePlayer.inv.AddAnItem( 'gwint_card_kaedweni_siege3', 1 );
	
	/*
	gwintManager.AddCardToCollection('poor_infantry');
	gwintManager.AddCardToCollection('poor_infantry2');
	gwintManager.AddCardToCollection('poor_infantry3');
	gwintManager.AddCardToCollection('blue_stripes');
	gwintManager.AddCardToCollection('blue_stripes2');
	gwintManager.AddCardToCollection('blue_stripes3');
	gwintManager.AddCardToCollection('kaedweni_siege');
	gwintManager.AddCardToCollection('kaedweni_siege2');
	gwintManager.AddCardToCollection('kaedweni_siege3');
	*/
}

quest function BIA_RemoveGwentCard( itemName : name )
{
	thePlayer.inv.RemoveItemByName( itemName, 1 );
}

exec function BIA_Tut ()
{
    var tut: W3TutorialPopupData;
    
    tut = new W3TutorialPopupData in thePlayer;
    
    tut.managerRef = theGame.GetTutorialSystem();
    tut.messageTitle = GetLocStringByKey("bia_intro_title");
    tut.messageText = GetLocStringByKey("bia_intro_message");

    tut.autosize = true;
    tut.enableAcceptButton = true;
    tut.canBeShownInMenus = false;
    tut.fullscreen = true;            
    tut.blockInput = true;
    tut.pauseGame = true;
        
    theGame.GetTutorialSystem().ShowTutorialHint(tut);
}

exec function bia_checkfact(id : string)
{
	if ( FactsDoesExist( id ) )
		theGame.GetGuiManager().ShowNotification( "Fact ("+id+") has val of "+FactsQuerySum(id) );
	else
		theGame.GetGuiManager().ShowNotification( "Fact ("+id+") doesn't exist" );
}

exec function bia_start_dlc10 ()
{
	FactsAdd( "bia_start_dlc10" );
}

exec function bia_playscene(scenePath : string, inputName : string)
{
    var scene : CStoryScene;

    scene = (CStoryScene)LoadResource(scenePath, true);

    theGame.GetStorySceneSystem().PlayScene(scene, inputName);
}

exec function bia_spawn(path : string, actorTag : name)
{
	var template : CEntityTemplate;
	var ent      : CEntity;
	var pos      : Vector;
	var rot      : EulerAngles;
	
	template = (CEntityTemplate)LoadResource(path, true);
	if (!template)
		return;
		
	pos = thePlayer.GetWorldPosition();
	pos += theCamera.GetCameraDirection() * 2.5;
	
	rot = thePlayer.GetWorldRotation();
	rot.Yaw += 180;
	
	ent = theGame.CreateEntity(template, pos, rot);
	if (!ent)
		return;
		
	ent.AddTag(actorTag);
}

exec function bia_addHairBowl()
{
	var newID : array<SItemUniqueId>;
	
	newID = thePlayer.inv.AddAnItem('Fancy Bowl', 1);
	thePlayer.EquipItem(newID[0]);
}