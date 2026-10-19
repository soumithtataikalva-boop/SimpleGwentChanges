# Simple Gwent Rework + BIA — DLC override source

Combines the current regular pack with the XMLs in `BIA reference new`, using `base` as the comparison baseline. Existing packages and references are unchanged.

- 92 changed card entries from Simple Gwent Rework.
- 15 entries incorporating BIA's partial updates.
- 5 complete BIA additions.
- 112 definitions per XML: 62 partial `extend` entries and 50 complete `replace` entries.
- Unchanged vanilla definitions are omitted. The resulting combined card set has 211 entries.
- Normal and NG+ XMLs are identical.

`CHANGES.md` lists all attribute and child-element changes against the base. `changes.json` contains the same comparison in structured form. BIA's ballista officer remains Neutral, as supplied in the current reference; this package adds no new balance changes.

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

Keep BIA installed for its added artwork, localization, item definitions, rewards and other resources; this package combines card definitions only. Use this package in place of the regular Simple Gwent Rework pack. Arrange for its definitions to load after BIA's card definitions so BIA's own patches cannot supersede the combined overrides. Exact runtime mounting order and in-game results require verification in the game.

Validated locally: XML parsing; attribute-only extensions checked; complete replacements compared with the full combined definitions; unique combined indices and names; resolved summon references; identical normal and NG+ output. No in-game or REDkit cooking test has been performed.

## Conflict handling

`extend` is used only for attribute updates. These entries contain identifying attributes and only changed attributes; they contain no nested elements. Complete `replace` definitions are used for every change to nested flags or summon lists, attribute removals, repurposed cards, and all five BIA additions. This avoids relying on unverified nested-list merge behavior. The change reports describe the resulting card changes, independently of the override strategy.
