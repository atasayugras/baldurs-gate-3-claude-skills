# bg3-camp-inventory - Anti-patterns

- DO NOT guess what the player has - only report what is in `references/inventory.md`
- DO NOT web-fetch item properties - read `../bg3-items/references/items.md`
- DO NOT edit the inventory file without confirming the change with the player first
- DO NOT mark something as "sell" if it appears in any build in `../bg3-build/references/builds.md`
- DO NOT invent item locations - if it's not in the log, say so and offer to add it
- DO NOT overwrite the entire inventory file - always Edit specific sections
