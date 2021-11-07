# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [unreleased]

### Added

- `prepare` target added inside `Makefile`
- `GoogleDot-Red` variant added ( fixed #21 )
- Distributed binaries in `bin` directory

### Changed

- prepare command fixed inside `Makefile`

## [v1.1.2] - 28 Jun 2021

### Added

- builder module moved to "src" directory.
- tidy `gbpkg.generator` module.(Merged #11)
- Support button inside PLING.bbcode product page

### Changed

- Makefile target re-arrange & installation process updated (Merged #10)
- Removed **clean** target from `builder/Makefile`
- Compact code inside `builder/*`
- Remove `setup.py`
- Builder module renamed to `gdbuild`
- Import `gdbuild` module directly inside `build.py`
- Windows **True HiDPi Supports** inside build.py

## [v1.1.1] - 29 Mar 2021

### Added

- **GoogleDot White** version added
- Clean `builder` cache on every build (supported in `Makefile`)
- Dynamic build using **Make variables** inside `builder/Makefile`
- **2-Space** format for `bitmapper`
- Sphinx `reST` docstring in `builder/gbpkg`

### Changed

- GoogleDot logo updated with white split
- Preview section updated in **[README.md](./README.md)**
- gbpkg supports **clickgen v1.1.9**
- Install `gbpkg` builder python package as user
- Removed python3 `virtualenv` commands from `builder/Makefile`

## [v1.1.0] - 08 Mar 2021

### Added

- GoogleDot Black version
- separated 'core' module in bitmapper
- Makefile updated for GoogleDot
- GoogleDot Black CI supports

### Changed

- All `.svg` formated with `xmllint`
- `.svg` colors changed to key colors (Green & Blue)
- Multiple cursors supports in `builder`
- Dynamic theme-name & comments inside `builder/build.py`

## [v1.0.1] - 17 Feb 2021

### Added

- Figma file added inside **README.md**
- Organized build & bitmaps source code
- Add **Make** compatibility
- Only build options added in `Makefile`
- Relinked few svg files for Windows cursors purpose
- New build docs

### Changed

- Fixed some linting problems of builder using `pylint`
- Reduced Package Size
- Customize sizes from `make`
- CI workflow `build` compatibility with `make` commands

## [v1.0.0] - 27 Oct 2020

### Added

- Initial release 🎊
- Logo and badges
- CI/CD Pipelines

[unreleased]: https://github.com/ful1e5/Google_Cursor/compare/v1.1.2...main
[v1.1.2]: https://github.com/ful1e5/Google_Cursor/compare/v1.1.0...v1.1.2
[v1.1.1]: https://github.com/ful1e5/Google_Cursor/compare/v1.1.0...v1.1.1
[v1.1.0]: https://github.com/ful1e5/Google_Cursor/compare/v1.0.1...v1.1.0
[v1.0.1]: https://github.com/ful1e5/Google_Cursor/compare/v1.0.0...v1.0.1
[v1.0.0]: https://github.com/ful1e5/Google_Cursor/tree/v1.0.0
