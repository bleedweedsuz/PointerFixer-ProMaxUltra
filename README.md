# PointerFixer-ProMaxUltra

PointerFixer-ProMaxUltra is a lightweight macOS CLI tool that resets your mouse pointer when it gets stuck or doesn't update correctly. It can fix cases where the cursor stays as a default arrow even when it should show as a resize, drag, or text cursor.

This tool is built with native macOS frameworks and has no dependencies.

---

## Introduction

macOS sometimes fails to update the cursor properly — for example, leaving it stuck in the wrong style when resizing windows or switching apps. PointerFixer-ProMaxUltra solves this by forcing a refresh: it temporarily changes the cursor, waits a short moment, and switches it back to default, triggering a redraw.

---

## How to Use

### 1. Download

Go to the [Releases](https://github.com/bleedweedsuz/PointerFixer-ProMaxUltra/releases) section and download the latest `pfix` binary.

> You don’t need to install anything. This is a precompiled macOS binary — just run it.

### 2. Run

Open Terminal and navigate to the folder where you downloaded `pfix`, then run:

```bash
./pfix
```

You should see output like this:

```bash
PointerFixer-ProMaxUltra running...
Mouse pointer has been reset.
```

If you get a permission error, make it executable first:

```bash
chmod +x pfix
```

### 3. (Optional) Install Globally

To run `pfix` from anywhere in Terminal:

```bash
chmod +x pfix
sudo mv pfix /usr/local/bin
```

---

Tested on macOS Sonoma 14.5 with an external mouse and USB-C dongle.

If this tool helps you, great! If you experience any issues, please open an issue on the GitHub repo so I can look into it.
