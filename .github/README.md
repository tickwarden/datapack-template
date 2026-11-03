# Minecraft Datapack Template

A small Minecraft Java datapack scaffold with sample load/tick functions,
advancements and GitHub workflows. It contains placeholders that must be
customized; the current checkout should not be treated as a ready-to-run pack.
The previous README is retained at the end for continuity.

## Current layout

- `pack.mcmeta` declares `min_format` and `max_format` as `122`, a placeholder
  description and version `1`. This is the **declared format**, not a tested
  promise of support for a particular Minecraft release.
- `data/CHANGE_ME/function/` contains `load`, `tick`, an empty
  `player/tick`, and `uninstall`. `data/minecraft/tags/function/` registers
  `CHANGE_ME:load` and `CHANGE_ME:tick`.
- `data/global/advancement/root.json` and
  `data/CHANGE_ME/advancement/template_datapack.json` are example advancements.
  The latter currently names `glogal:root` as its parent, whereas the tracked
  root is under `global`; review this mismatch before using it.
- `.github/workflows/` contains a path-filtered mcfunction lint workflow and
  manually dispatched metadata-update and release/publish workflows.
  `requirements.txt` contains only a placeholder comment.

## Adapt the scaffold

1. Choose a valid lowercase namespace and rename `data/CHANGE_ME/`. Search and
   update **all** corresponding references, including both Minecraft function
   tags, function calls such as `change_me:player/tick`, scoreboard objective
   names, storage `change_me:data`, advancement paths and any packaging name.
   Merely renaming the folder leaves the checked-in tags pointing at
   `CHANGE_ME`, which is a placeholder and is not a valid lowercase namespace.
2. Set the description and supported format in `pack.mcmeta` for the actual
   Minecraft version you intend to use, and inspect the sample advancement
   parent noted above. Install the finished pack in a **backed-up test world**
   and use `/reload`; no game runtime was tested for this README.
3. The load function adds three scoreboard objectives, enables a trigger for
   players, initializes storage and announces a load. The tick function skips
   processing without players, increments a global score and calls the empty
   player tick function. Replace the example logic as needed.
4. `uninstall.mcfunction` **removes the named scoreboard objectives and
   portions of storage**, announces removal and attempts to disable a pack named
   `file/CHANGE_ME`. Review names and back up world data before running it; the
   actual installed pack name may differ. The stored version field is not
   removed by that function.

## Workflows and releases

The mcfunction workflow runs on selected changes to `main` or on a pull request
that changes `.mcfunction` files; a README-only PR need not trigger it. It runs
shell checks and installs an unpinned `mecha` package for validation. The other
two workflows run only when manually dispatched: one edits and pushes
`pack.mcmeta`; the other packages files, commits/tags/pushes, and creates a
GitHub release. Review their permissions and effects before dispatching them.
The release workflow's ZIP command names `assets/` and a root `README.md`,
neither of which exists in this snapshot, so review the archive and command
behavior before using it. This documentation update did not run any workflow,
world, server, release or package build locally.

## License and contributions

See the repository [license](../LICENSE) and [security policy](SECURITY.md).
The historical contribution and line-ending guidance is preserved below.

## Historical README (preserved)

This is the previous README, retained verbatim. Its version and setup claims
should be checked against the actual source and the cautions above.

~~~~~~text
 🟩 Minecraft Datapack Template

A clean, ready-to-use Minecraft Java Edition datapack template with lint workflows included.

---

## 📁 File Structure


```

datapack-template/
├── pack.mcmeta              # Datapack metadata (format version, description).
├── data/
│   ├── global/
│   │   └── advancement/
│   │       └── root.json
│   ├── minecraft/           # Standard Minecraft tags
│   │   └── tags/
│   │       └── function/
│   │           ├── load.json # Registers load.mcfunction
│   │           └── tick.json # Registers tick.mcfunction
│   └── CHANGE_ME/           # ← Rename this to your namespace
│       └── function/
│           ├── load.mcfunction      # Runs once on load/reload
│           ├── tick.mcfunction      # Runs every game tick
│           └── uninstall.mcfunction
├── .gitattributes           # Prevents CRLF line ending issues
└── .github/
├── README.md
├── SECURITY.md
└── workflows/
├── mcfunction-lint.yml      # Auto-checks code on push
└── update-pack.yml

```

## 🚀 Getting Started

1. Click **"Use this template"** → **"Create a new repository"**.
2. Clone your new repository.
3. Rename the `CHANGE_ME` folder to your custom namespace (e.g., `myaddon`).
4. Edit `pack.mcmeta` to update the description.
5. Copy the datapack folder into your world's `datapacks/` directory:

```

.minecraft/saves/<your_world>/datapacks/

```
6. In-game, run:

```

/reload

```
7. Start building inside `load.mcfunction` and `tick.mcfunction`!

## ⚠️ Requirements

- Minecraft Java Edition **26.3** (pack format 122)
- Vanilla only — no mods required.

## 🤝 Contributing

Contributions are welcome!

1. Fork this repository.
2. Create a feature branch:
```bash
git checkout -b feature/my-change

```

3. Make your changes.
4. Ensure the lint workflow passes (no CRLF, correct macro prefixes).
5. Open a Pull Request with a clear description of your changes.

> **Note:** Please ensure all `.mcfunction` files use **LF** line endings.
> Set `git config core.autocrlf false` before committing.
~~~~~~
