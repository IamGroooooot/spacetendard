# Korean sequence diagram rendering

These are real offscreen font renderings using macOS CoreText, not screenshots
of Ghostty. Both use the same UTF-8 source, requested 19 pt size, colors, and
default OpenType features. No spaces or positions are changed between fonts.
CoreText lays out each line naturally; no per-character placement or selective
width correction is applied by the renderer.

- `korean-checkout.txt`: 40 lines, each 79 display columns when Hangul is counted as two.
- `spacemono-coretext.png`: original Space Mono Nerd Font Mono from Nerd Fonts v3.4.0, with macOS automatic Korean fallback.
- `spacetendard-coretext.png`: Spacetendard 0.1.2, with fitted Pretendard Hangul and collapsing ASCII arrow substitutions removed.

macOS and its Korean fallback font can affect the original's appearance.
Terminal cell layout may differ from CoreText's natural line layout.

From the repository root on macOS, with Swift available:

```sh
make download
make run
swift tools/render-comparison.swift \
  upstream/spacemono/SpaceMonoNerdFontMono-Regular.ttf \
  assets/diagrams/korean-checkout.txt \
  assets/diagrams/spacemono-coretext.png \
  'Space Mono Nerd Font Mono (original + system Hangul fallback)'
swift tools/render-comparison.swift \
  fonts/ttf/Spacetendard-Regular.ttf \
  assets/diagrams/korean-checkout.txt \
  assets/diagrams/spacetendard-coretext.png \
  'Spacetendard 0.1.2 (Pretendard Hangul + ASCII cell widths)'
```

Space Mono, Nerd Fonts, and Pretendard retain their original copyrights.
See the repository's `NOTICE.md`, `LICENSE`, and `LICENSES.md` for attribution
and font permissions. The source diagram and rendering code were made for this
project and are distributed under the project's license.
