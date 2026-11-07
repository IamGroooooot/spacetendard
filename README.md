# Spacetendard

[한국어](README.ko.md)

**Space Mono Nerd Font Mono + Pretendard, with Korean aligned to a two-cell grid.**
Forked from [kuskhan/jetendard](https://github.com/kuskhan/jetendard), whose build
implementation was inspired by [Yeomil Mono](https://github.com/taevel02/yeomil-mono).
This fork replaces the JetBrains Mono base with Space Mono; the generated font
family is **Spacetendard**.

## Download and install

Download the TTF archive from [Releases](https://github.com/IamGroooooot/spacetendard/releases/latest),
unzip, and install the four `.ttf` files using your OS font manager. Select
`Spacetendard` in your editor or terminal, then restart the app if needed.
Keep the included license files when redistributing the fonts.

![Generated font specimen](assets/spacetendard-specimen.png)

## Width policy

- ASCII and Nerd Font Mono icons: one cell (612 font units).
- All 11,172 modern Hangul syllables: two cells (1,224 units).
- Modern NFD Hangul (decomposed leading/vowel/trailing Jamo): composes to the same
  glyph and advance as NFC in a shaping engine such as HarfBuzz.
- Compatibility Jamo and supported fullwidth characters: two cells.
- Supported halfwidth forms, including halfwidth Hangul: one cell.
- Korean outlines are scaled by `1.15` after units-per-em normalization, centered,
  and capped to avoid clipping. The outline size does not change cell width.

The base font's Latin outlines, OpenType features, and Nerd Font icons are
retained. Space Mono does not supply JetBrains Mono's programming ligature set.

This is a dual-width programming font, not a font where Hangul occupies one
Latin cell. Unsupported characters can still fall back to another font. This
project does not add all CJK ideographs, kana, emoji, or complete archaic Hangul
shaping. Terminal `wcwidth` rules, ambiguous-width settings, fallback, and a
renderer without Hangul shaping can still affect alignment. Select the font
explicitly and use a terminal that treats modern Hangul as two cells.

## Build

Requires [uv](https://docs.astral.sh/uv/) and Python 3.12 or later.

```sh
uv sync --all-groups
make download
make run
make lint
make test
```

Sources are pinned to Nerd Fonts **v3.4.0 / SpaceMono.zip** and Pretendard
**v1.3.9**. The downloader verifies SHA-256 hashes before extracting fonts.

| Output | Latin source | Korean source |
| --- | --- | --- |
| Regular | SpaceMonoNerdFontMono-Regular | Pretendard-Regular |
| Italic | SpaceMonoNerdFontMono-Italic | Pretendard-Regular |
| Bold | SpaceMonoNerdFontMono-Bold | Pretendard-Bold |
| BoldItalic | SpaceMonoNerdFontMono-BoldItalic | Pretendard-Bold |

Korean stays upright in italic styles. No synthetic extra weights are produced.

Outputs: `fonts/ttf/Spacetendard-*.ttf`, `fonts/otf/Spacetendard-*.otf`,
`fonts/webfont/Spacetendard-*.woff2`, and `fonts/webfont/spacetendard.css`.
The `.otf` files contain TrueType outlines, not CFF outlines. Each output
directory includes the complete license bundle. Downloads and generated fonts
are ignored by git; installable binaries are distributed through Releases.

```sh
uv run spacetendard --variants Regular Bold
uv run spacetendard --weights Regular Bold --styles normal italic
uv run spacetendard --korean-scale 1.10
uv run spacetendard --help
SPACETENDARD_RUN_FULL_INTEGRATION=1 uv run pytest
```

Tests check all modern Hangul syllables and their NFD equivalents through
HarfBuzz for every generated TTF, as well as mixed Korean/Latin strings,
halfwidth/fullwidth characters, icons, names, style metadata, and notices.
Run `make run` first to include the generated-family checks.

## Licenses and attribution

See [LICENSE](LICENSE) and [LICENSES.md](LICENSES.md) for the source-by-source
review, original notices, and redistribution conditions. The font is distributed
under SIL OFL 1.1 with the upstream icon notices retained. It may be used,
modified, and redistributed under those conditions; the font cannot be sold
by itself. The reserved names `Jetendard` and `Pretendard` are retained only in
attribution, not used as the generated family name. No upstream endorsement
or rights to third-party trademarks are claimed.
