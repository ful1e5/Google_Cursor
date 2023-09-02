# Google Cursor

An OpenSource cursor theme inspired by Google.

[![Build](https://github.com/ful1e5/Google_Cursor/workflows/build/badge.svg)](https://github.com/ful1e5/Google_Cursor/actions?query=workflow%3Abuild)

## Google Cursor needs your Input

Until 2021 my cursors projects were well funded by [pling.com](https://www.pling.com) but since the
[pling-factor](https://www.pling.com/terms/payout) on the website has decreased and monthly payments
are <500$, It is now dependent on community funding and sponsorships. If you want to help me to maintain
Google Cursor and my other open source projects actively, consider sponsoring my work on [GitHub Sponsor](https://github.com/sponsors/ful1e5)
or DM me on [Twitter](https://twitter.com/ful1e5) if your company would like to support my projects,
I will gladly look into it and post your avatar in the project's README.

I appreciate all the wonderful people who patronize and sponsoring my work.

## Sponsors

<!-- Add your name or avatar here with the Pull Request in case I missed it. -->

N/A

---

![GoogleDot Blue](https://imgur.com/osnWiED.png)
![GoogleDot Black](https://i.imgur.com/9ZlC1gD.png)
![GoogleDot White](https://i.imgur.com/67KgJ3s.png)
![GoogleDot Red](https://imgur.com/VtauWGC.png)

> **Note**
> All cursor's `.svg` files are found in [svg](./svg) directory or you can also find them on
> [Figma](https://www.figma.com/file/i7nfGDWCTWlNJlnhmvHDfh/Google-Cursor?node-id=0%3A1).

## Cursor Sizes

### Xcursor Sizes:

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

### Windows Cursor Size:

- <kbd>16x16</kbd> - Small
- <kbd>24x24</kbd> - Regular
- <kbd>32x32</kbd> - Large
- <kbd>48x48</kbd> - Extra Large

## Colors:

### GoogleDot Blue

- Base Color - `#4285F4` (Blue)
- Outline Color - `#FFFFFF` (White)

### GoogleDot Black

- Base Color - `#000000` (Black)
- Outline Color - `#FFFFFF` (White)

### GoogleDot White

- Base Color - `#FFFFFF` (Black)
- Outline Color - `#000000` (White)

### GoogleDot Red

- Base Color - `#FF0000` (Red)
- Outline Color - `#FFFFFF` (White)

## How to get it

### Easiest Way

You can download latest `stable` & `development` releases from
[Release Page](https://github.com/ful1e5/Google_Cursor/releases).

### Packages

> **Note**
> If you're having trouble with the packages please submit a request to the package maintainer
> before creating an issue.

#### Arch Linux/Manjaro

Arch Linux/Manjaro users can install from the [AUR](https://aur.archlinux.org/packages/googledot-cursor-theme)
currently maintained by [_@yochananmarqos_](https://aur.archlinux.org/packages/?K=yochananmarqos&SeB=m).
Can be installed via Pamac (preinstalled in Manjaro), Paru or any other
[AUR helper](https://wiki.archlinux.org/index.php/AUR_helpers).

```bash
paru -S googledot-cursor-theme
```

#### Nix/NixOS
Nix users can install from the [package in nixpkgs](https://search.nixos.org/packages?channel=unstable&buckets=%7B%22package_attr_set%22%3A%5B%5D%2C%22package_license_set%22%3A%5B%5D%2C%22package_maintainers_set%22%3A%5B%22Henry%20Hiles%22%5D%2C%22package_platforms%22%3A%5B%5D%7D&query=google_cursor) (Maintained by [@Henry-Hiles](https://github.com/Henry-Hiles)). Installation instructions can be found by clicking on the title of the [nix package](https://search.nixos.org/packages?channel=unstable&buckets=%7B%22package_attr_set%22%3A%5B%5D%2C%22package_license_set%22%3A%5B%5D%2C%22package_maintainers_set%22%3A%5B%22Henry%20Hiles%22%5D%2C%22package_platforms%22%3A%5B%5D%7D&query=google_cursor). The nix package is currently __only__ available in unstable.

## Installing Google Cursor

#### Linux/X11

**Installation:**

```bash
tar -xvf GoogleDot-Blue.tar.gz                # extract `GoogleDot-Blue.tar.gz`
mv GoogleDot-* ~/.icons/                      # Install to local users
sudo mv GoogleDot-* /usr/share/icons/         # Install to all users
```

**Uninstallation:**

```bash
rm ~/.icons/GoogleDot-*                       # Remove from local users
sudo rm /usr/share/icons/GoogleDot-*          # Remove from all users
```

#### Windows

**Installation:**

1. Unzip `.zip` file
2. Open unziped directory in Explorer, and **right click** on `install.inf`.
3. Click 'Install' from the context menu, and authorize the modifications to your system.
4. Open Control Panel > Personalization and Appearance > Change mouse pointers,
   and select **Google Cursors**.
5. Click '**Apply**'.

**Uninstallation:**

Run the `uninstall.bat` script packed with the `.zip` archive

**OR** follow these steps:

1. Go to **Registry Editor** by typing the same in the _start search box_.
2. Expand `HKEY_CURRENT_USER` folder and expand `Control Panel` folder.
3. Go to `Cursors` folder and click on `Schemes` folder - all the available custom cursors that are
   installed will be listed here.
4. **Right Click** on the name of cursor file you want to uninstall; for eg.: _Google Cursors_ and
   click `Delete`.
5. Click '**yes**' when prompted.

## Build From Source

#### Notes

- Google Cursor build configuration and cursor hotspot settings are bundled in the `build.toml` file.
- Check out the scripts section in [package.json](./package.json) to see how we build the cursor theme,
  excluding the render scripts. They are useful for converting `.svg` files to `.png` files.
- yarn is optional, For building XCursors and Windows cursors from `.png` files or resizing them
  you don't need that. If you want to develop/modify Google Cursor's colors, and bitmaps, or generate a png
  file from a svg, Then you can use yarn because bitmapper is written in TypeScript.
- Since Google Cursor variants are designed similarly, they share the same hotspot settings so a
  single configuration file `build.toml` is responsible for building all variants. Due to this, you will have
  to change the following options in `ctgen` to build the appropriate variant:
  - **-d**: bitmaps directory
  - **-n**: The name you want to give to the generated theme.
  - **-c**: Theme comment.
  - See `ctgen --help` for all available options.

### Build prerequisites

- Python version 3.7 or higher
- [clickgen](https://github.com/ful1e5/clickgen)>=2.1.2 (`pip install clickgen`)
- [yarn](https://github.com/yarnpkg/yarn)

### Quick start

1. Install [build prerequisites](#build-prerequisites) on your system
2. `git clone https://github.com/ful1e5/Google_Cursor`
3. `cd Google_Cursor && yarn build`
4. See [Installing Google Cursor](#installing-google-cursor).

### Building

> **Note**
> Bitmaps are already generated in the `bitmaps` directory and **managed by the maintainer**
> (do not edit them directly).

First make sure you installed the [build prerequisites](#build-prerequisites).
Now that you have the dependencies, you can try build individual themes from bitmaps and
customize sizes, target platform, and etc. with the `ctgen` CLI (packed with `clickgen`).

#### `yarn build` aberration

Here are the default commands we used to build the Google Cursor's variants and packed them into `yarn build`:

```bash
ctgen build.toml -d 'bitmaps/GoogleDot-Blue' -n 'GoogleDot-Blue' -c 'Blue cursor theme inspired on Google'
ctgen build.toml -d 'bitmaps/GoogleDot-Black' -n 'GoogleDot-Black' -c 'Black cursor theme inspired on Google'
ctgen build.toml -d 'bitmaps/GoogleDot-White' -n 'GoogleDot-White' -c 'White cursor theme inspired on Google'
ctgen build.toml -d 'bitmaps/GoogleDot-Red' -n 'GoogleDot-Red' -c 'Red cursor theme inspired on Google'
```

Afterwards, the themes can be found in the `themes` directory.

#### Customize Sizes

> **Note**
> You can change the cursor size up to 200 because pngs are rendered with 200x200.
> If the cursor is resized by more than rendered png size, the final cursor will be blurred.

##### Customize Windows Cursor size

To build Windows cursor with size `16`:

> **Warning**
> Windows cursor supports only one size, if multiple sizes are given with `-s` the first size will
> be considered in build.

```bash
ctgen build.toml -s 16 -p windows -d 'bitmaps/GoogleDot-Blue' -n 'GoogleDot-Blue' -c 'Blue cursor theme inspired on Google with size 16'
```

You can also customize output directory with `-o` option:

```bash
ctgen build.toml -s 16 -p windows -d 'bitmaps/GoogleDot-Blue'-o 'out' -n 'GoogleDot-Blue' -c 'Blue cursor theme inspired on Google with size 16'
```

##### Customize XCursor size

To build XCursor with size `16`:

```bash
ctgen build.toml -s 16 -p x11 -d 'bitmaps/GoogleDot-Blue' -n 'GoogleDot-Blue' -c 'Blue cursor theme inspired on Google with size 16'
```

You can also assign multiple sizes to `ctgen` for XCursors build:

```bash
ctgen build.toml -s 16 24 32 -p x11 -d 'bitmaps/GoogleDot-Blue' -n 'GoogleDot-Blue' -c 'Blue cursor theme inspired on Google with size 16'
```

#### Customize Colors

To customize Google Cursor's color you have to install node dependencies with `yarn install` command.
After installing dependencies you can customize the colors via `npx cbmp` Node CLI App which packed with
[cbmp](https://github.com/ful1e5/cbmp) node package.

##### `yarn render` aberration

Here are the default commands we used for generating the Google Cursor's bitmaps and packed them into `yarn render`:

```bash
npx cbmp -d 'svg' -n 'GoogleDot-Blue' -bc '#4285F4' -oc '#FFFFFF'
npx cbmp -d 'svg' -n 'GoogleDot-Black' -bc '#000000' -oc '#FFFFFF'
npx cbmp -d 'svg' -n 'GoogleDot-White' -bc '#FFFFFF' -oc '#000000'
npx cbmp -d 'svg' -n 'GoogleDot-Red' -bc '#FF0000' -oc '#FFFFFF'
```

#### Examples

Lets generate modern GoogleDot with green base color and black outline:

```bash
npx cbmp -d 'svg' -n 'GoogleDot-Hacker' -bc '#00FE00' -oc '#000000'
```

After rendering custom color you have to build cursor through `ctgen`:

```bash
ctgen build.toml -d 'bitmaps/GoogleDot-Hacker' -n 'GoogleDot-Hacker' -c 'Green and black GoogleDot cursors.'
```

Afterwards, Generated theme can be found in the `themes` directory.

###### GoogleDot Gruvbox

```bash
npx cbmp -d 'svg' -n 'GoogleDot-Gruvbox' -bc '#282828' -oc '#EBDBB2'
ctgen build.toml -d 'bitmaps/GoogleDot-Gruvbox' -n 'GoogleDot-Gruvbox' -c 'Groovy GoogleDot cursors.'
```

###### GoogleDot Solarized Dark

```bash
npx cbmp -d 'svg' -n 'GoogleDot-Solarized-Dark' -bc '#002b36' -oc '#839496'
ctgen build.toml -d 'bitmaps/GoogleDot-Solarized-Dark' -n 'GoogleDot-Solarized-Dark' -c 'Solarized Dark GoogleDot cursors.'
```

###### GoogleDot Solarized Light

```bash
npx cbmp -d 'svg' -n 'GoogleDot-Solarized-Light' -bc '#839496' -oc '#002b36'
ctgen build.toml -d 'bitmaps/GoogleDot-Solarized-Light' -n 'GoogleDot-Solarized-Light' -c 'Solarized Light GoogleDot cursors.'
```

###### GoogleDot Dracula

```bash
npx cbmp -d 'svg' -n 'GoogleDot-Dracula' -bc '#282a36' -oc '#f8f8f2'
ctgen build.toml -d 'bitmaps/GoogleDot-Dracula' -n 'GoogleDot-Dracula' -c 'Dracula GoogleDot cursors.'
```

# Bugs

Bugs should be reported [here](https://github.com/ful1e5/Google_Cursor/issues) on the Github issues page.

# Getting Help

You can create a **issue**, I will help you.

# Contributing

Check [CONTRIBUTING.md](CONTRIBUTING.md), any suggestions for features and contributions to the continuing code masterelopment can be made via the issue tracker or code contributions via a `Fork` & `Pull requests`.
