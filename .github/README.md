# 🟩 Minecraft Datapack Template

A clean, ready-to-use Minecraft Java Edition datapack template with lint workflows included.





---
> [!CAUTION]
> **This repository has been permanently archived.**
> Development on this project has been discontinued. No future versions,
> updates, or successors are planned. The codebase is preserved as-is
> for reference purposes only.

---

## 🗄️ Archive Notice

This repository was permanently archived on **April 12, 2026**.

**This project is no longer maintained and will not receive any future updates.**
No new issues, pull requests, forks intended for continuation, or contributions
will be reviewed or accepted.

The repository remains public solely as a historical reference.
Use at your own risk — compatibility with current or future Minecraft versions
is not guaranteed.
---



## 📁 File Structure
```
datapack-template/
├── pack.mcmeta              # Datapack metadata (format version, description)
├── pack.png                 # Datapack icon (optional, 64x64 PNG)
├── data/
│   └── CHANGE_ME/           # ← Rename this to your namespace
│       ├── function(s)/
│       │   ├── load.mcfunction   # Runs once on load/reload
│       │   └── tick.mcfunction   # Runs every game tick
│       └── tags/
│           └── function(s)/
│               ├── load.json     # Registers load.mcfunction
│               └── tick.json     # Registers tick.mcfunction
├── .gitattributes           # Prevents CRLF line ending issues
├── .github/
│   └── README.md
│   └── SECURITY.md
│   └── workflows/
│       └── mcfunction-lint.yml  # Auto-checks code on push
│       └── update-pack.yml
```

## 🚀 Getting Started

1. Click **"Use this template"** → **"Create a new repository"**
2. Clone your new repo
3. Rename the `CHANGE_ME` folder to your namespace (e.g. `myaddon`)
4. Edit `pack.mcmeta` — update the description
5. Copy the datapack folder into your world's `datapacks/` directory:
```
   .minecraft/saves/<your_world>/datapacks/
```
6. In-game, run:
```
   /reload
```
7. Start building in `load.mcfunction` and `tick.mcfunction`

## ⚠️ Requirements

- Minecraft Java Edition **1.21.4+** (pack format 61)
- No mods required — vanilla only

## 🤝 Contributing

Contributions are welcome!

1. Fork this repository
2. Create a new branch:
```
   git checkout -b feature/my-change
```
3. Make your changes
4. Make sure the lint workflow passes (no CRLF, correct macro prefixes)
5. Open a Pull Request with a clear description of what you changed

> **Note:** Please keep all `.mcfunction` files in **LF** line endings.  
> Use `git config core.autocrlf false` before committing.

## 📄 License

MIT — free to use, modify, and distribute.
