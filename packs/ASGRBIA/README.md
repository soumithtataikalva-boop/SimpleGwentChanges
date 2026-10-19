# Simple Gwent Rework + BIA — DLC override source

Combines the current regular pack with the XMLs in `BIA reference new`, using `base` as the comparison baseline. Existing packages and references are unchanged.

- 92 changed card entries from Simple Gwent Rework.
- 15 entries incorporating BIA's partial updates.
- 5 complete BIA additions.
- 112 definitions per XML: 105 partial `extend` entries, 2 complete `replace` entries and 5 new definitions without conflict tags.
- Unchanged vanilla definitions are omitted. The resulting combined card set has 211 entries.
- Normal and NG+ XMLs are identical.

`CHANGES.md` lists all attribute and child-element changes against the base. `changes.json` contains the same comparison in structured form. Ballista Officer (177) is changed from BIA's Neutral faction to Northern Realms.

## REDkit source layout

```text
ASGRBIA/
  data/
    gameplay/
      items/def_gwint_cards_final_SGRBIA.xml
      items_plus/def_gwint_cards_final_SGRBIA.xml
```

Copy the `data` source tree into your REDkit workspace at `dlc/ASGRBIA/data/`.

Create a DLC definition resource (`.reddlc`) in REDkit and register a `CR4DefinitionsDLCMounter` that points its `definitionXmlFilePath` to:

`dlc/ASGRBIA/data/gameplay/items/def_gwint_cards_final_SGRBIA.xml`

The `items_plus` file is the identical NG+ source counterpart. Do not mount both files simultaneously: that would register the same definitions twice. Use the counterpart if your NG+ packaging workflow requires it; a filesystem folder alone does not register a definition mounter.

Cook and deploy through REDkit. This repository package contains XML source, not a cooked bundle or a generated binary `.reddlc` resource. The mounter must still be created in REDkit before this package can load in game.

## Dependencies and validation

Keep BIA installed for its added artwork, localization, item definitions, rewards and other resources; this package combines card definitions only. Use this package in place of the regular Simple Gwent Rework pack. This package targets the user-described setup where BIA's card-definition XML is ignored and ASGRBIA supplies the combined definitions. The five BIA additions are therefore registered as new cards without conflict tags. In-game results require verification in that setup.

Validated locally: XML parsing; extensions reconstructed using the user-confirmed attribute and list replacement rules and compared with the full combined definitions; unique combined indices and names; resolved summon references; identical normal and NG+ output. No in-game or REDkit cooking test has been performed.

## Conflict handling

Following the behavior confirmed by the user, `extend` overwrites supplied attributes and replaces supplied flag lists in full; omitted attributes and lists remain unchanged. Extensions therefore contain only changed attributes and complete changed lists. This applies to row flags, Hero status, abilities and summon lists.

Complete `replace` definitions remain only for the repurposed GOG slots (26 and 27), which change identity and remove old data. Regular Regis (14) uses `extend` for his suicide-summon ability and target, retaining his base alternate-art attributes. The five BIA-added cards have complete definitions without `on_conflict` tags. The change reports describe the resulting card changes, independently of the override strategy.
