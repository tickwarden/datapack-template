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
