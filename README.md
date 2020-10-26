<p align="center">
    GoogleDot Cursor
</p>

<p align="center">
    🍭 Cursor theme inspired on Google
</p>

<!-- Badges -->
<p align="center">
  <!-- First Row -->
  <!-- <a href="https://github.com/ful1e5/Google_Cursor/actions?query=workflow%3Abuild">
    <img alt="GitHub Action Build" src="https://github.com/ful1e5/Google_Cursor/workflows/build/badge.svg" width="102" />
  </a> -->
  
  <a href="https://www.codefactor.io/repository/github/ful1e5/google_cursor">
    <img src="https://www.codefactor.io/repository/github/ful1e5/google_cursor/badge" alt="CodeFactor" />
  </a>

  <!-- Second Row -->
  </br >
  <a href="https://www.typescriptlang.org/docs/handbook/typescript-from-scratch.html">
    <img alt="npm type definitions" src="https://img.shields.io/npm/types/typescript">
  </a>

  <a href="https://github.com/puppeteer/puppeteer/">
    <img alt="Puppeteer version" src="https://img.shields.io/github/package-json/dependency-version/ful1e5/Google_Cursor/puppeteer">
  </a>

  <a href="https://github.com/ful1e5/clickgen">
    <img alt="Clickgen" src="https://img.shields.io/badge/theme%20builder-clickgen-FD0542" />
  </a>
  
  <!-- Second Row -->
  <br />
  <a href="https://github.com/ful1e5/Google_Cursor/releases">
    <img alt="Google Cursor release (latest by date including pre-releases)" src="https://img.shields.io/github/v/release/ful1e5/Google_Cursor?include_prer"
  </a>

  <a href="https://github.com/ful1e5/Google_CursorICENSE">
    <img alt="License" src="https://img.shields.io/github/license/ful1e5/Google_Cursor?color=0081FB" />
  </a>

  <!-- Third Row -->
  <br />
  <a href="www.pling.com/p/1215613#files-panel">
    <img alt="License" src="https://img.shields.io/badge/-Linux-grey?logo=linux" />
  </a>

  <a href="www.pling.com/p/1215613#files-panel">
    <img alt="License" src="https://img.shields.io/badge/-Windows-blue?logo=windows" />
  </a>

  <a href="https://www.python.org/">
    <img alt="License" src="https://img.shields.io/badge/-Python-yellow?logo=python" />
  </a>

 <!-- Fourth Row -->
  <br />
  <a href="https://github.com/ful1e5">
    <img alt="Made By Kaiz"  src="https://kaiz.vercel.app/api/badge" width="133" />
  </a>
</p>

---

<!-- Intro -->

# GoogleDot Cursor

Cursor theme inspired on **google material design** for `Windows` and `Linux` with _HiDPi Support_ 🎉.

#### Cursor Sizes

<kbd>22</kbd>
<kbd>24</kbd>
<kbd>28</kbd>
<kbd>32</kbd>
<kbd>40</kbd>
<kbd>48</kbd>
<kbd>56</kbd>
<kbd>64</kbd>
<kbd>72</kbd>
<kbd>80</kbd>
<kbd>88</kbd>
<kbd>96</kbd>

#### Colors

![#4285F4](https://imgur.com/NXEup6E.png)
![#FFFFFF](https://imgur.com/cvFxSBb.png)

#### Quick install

<p align="center">
  <a href="https://www.pling.com/p/1215613/" >
    <img title="GoogleDot Pling Store" width="40%" src="https://imgur.com/VxSgrWw.png">
  </a>
</p>

### Manual Install

#### Linux/X11

```bash
# extract `GoogleDot.tar.gz`
tar -xvf GoogleDot.tar.gz

# For local users
mv GoogleDot ~/.icons/

# For all users
sudo mv GoogleDot /usr/share/icons/
```


#### Windows

1. unzip `GoogleDot_Windows.zip` file
2. Open `GoogleDot_Windows/` in Explorer, and **right click** on `install.inf`.
3. Click 'Install' from the context menu, and authorize the modifications to your system.
4. Open _Control Panel > Personalization and Appearance > Change mouse pointers_, and select **GoogleDot Cursors**.
5. Click '**Apply**'.

<!-- Build Dependencies -->

# Dependencies

## Runtime Dependencies

- libxcursor-dev
- libx11-dev
- libpng-dev (<=1.6)

#### Install Runtime Dependencies

##### macOS

```bash
brew cask install xquartz libpng
```

##### Debain/ubuntu

```bash
sudo apt install libx11-dev libxcursor-dev libpng-dev
```

##### ArchLinux/Manjaro

```bash
sudo pacman -S libx11 libxcursor libpng
```

##### Fedora/Fedora Silverblue/CentOS/RHEL

```bash
sudo dnf install libx11-devel libxcursor-devel libpng-devel
```

## Build Dependencies

- [nodejs](https://nodejs.org/en/) (<=12.x.x)
- [yarn](https://classic.yarnpkg.com/en/docs/install/)
- [python](https://www.python.org/downloads/) (<=3.6)
- [pip3](https://pip.pypa.io/en/stable/installing/)

### Node Packages

- [puppeteer](https://www.npmjs.com/package/puppeteer)
- [pngjs](https://www.npmjs.com/package/pngjs)
- [pixelmatch](https://www.npmjs.com/package/pixelmatch)

### PyPi Packages

- [clickgen](https://pypi.org/project/clickgen/s)
- [Pillow](https://pypi.org/project/Pillow/)

