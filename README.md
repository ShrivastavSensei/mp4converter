# mp4convert

A fast, minimal **MP4 → MP3** command-line converter built on `ffmpeg`.

Designed for people who live in the terminal and want:
- zero GUI bloat
- correct handling of spaces
- zsh & bash compatibility
- a clean ASCII-based UI

---

## ✨ Features

- Convert a **single MP4 file** or **entire directories**
- Recursive folder support
- Works with **paths containing spaces**
- Fully **zsh-safe** (also works in bash)
- Displays a branded **ASCII splash** on every run
- Simple installer (`install.sh`)
- No runtime dependencies beyond `ffmpeg`

---

## 📦 Requirements

- Linux
- `ffmpeg` installed and available in `$PATH`

### Fedora
```bash
sudo dnf install ffmpeg
````

---

## 🚀 Installation

### One-line install (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/mp4convert/main/install.sh | bash
```

Restart your terminal after install:

```bash
exec $SHELL
```

---

### Manual install

```bash
git clone https://github.com/YOUR_USERNAME/mp4convert
cd mp4convert
chmod +x install.sh
./install.sh
exec $SHELL
```

---

## ✅ Verify installation

```bash
mp4convert --version
```

You should see:

* the ASCII banner
* the version number

---

## 🧠 Usage

### Convert a single MP4 file

```bash
mp4convert video.mp4
```

---

### Convert a single file to a specific output directory

```bash
mp4convert -o ~/Music video.mp4
```

---

### Convert all MP4 files in a directory (recursive)

```bash
mp4convert ~/Videos
```

---

### Set MP3 quality

```bash
mp4convert -q 2 video.mp4
```

**Quality scale**

* `0` = best quality (default)
* `9` = smallest file size

---

## 🧾 Options

| Option      | Description                 |
| ----------- | --------------------------- |
| `-q <0-9>`  | MP3 quality (default: 0)    |
| `-o <dir>`  | Output directory            |
| `-h`        | Show help                   |
| `--version` | Show version + ASCII banner |

---

## 📁 Output behavior

* By default, `.mp3` files are created **next to the source**
* With `-o`, all outputs go into the specified directory
* Original MP4 files are **never deleted**

---

## 🛠 Example

```bash
mp4convert -q 1 -o ~/Music "/run/media/user/USB Drive/Videos"
```

---

## 📜 License

MIT License
Free to use, modify, and distribute.

---

## 💡 Notes

* This tool intentionally avoids GUIs
* The ASCII banner is part of the interface, not decoration
* Built for correctness, not clicks

---

## 🧪 Tested on

* Fedora (zsh & bash)
* ffmpeg (RPM Fusion builds)

---

## ⭐ Contributing

Issues and pull requests are welcome.
Keep it simple. Keep it Unix.

```

---

If you want next:
- badges (license, shell, ffmpeg)
- demo GIF section
- CONTRIBUTING.md
- GitHub Releases + tags
- `man mp4convert`
- tab completion

You’re already at **real open-source project quality**.
```
