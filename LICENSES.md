# License review and distribution notices

Reviewed 2026-11-08. This records the published upstream permissions and the
compliance measures used in this build; it does not claim rights to brand marks.
All original notices are in [src/spacetendard/licenses](src/spacetendard/licenses).

| Component | Source checked | Terms and treatment |
| --- | --- | --- |
| Jetendard build software | [4b018fcb](https://github.com/kuskhan/jetendard/tree/4b018fcb9c6cc87fdb788aa27fe22b89f4110d7d) | OFL 1.1, reserved name Jetendard. Original copyright and full license preserved. Derived software and font remain OFL. |
| Yeomil Mono build ancestry | [282c3225](https://github.com/taevel02/yeomil-mono/tree/282c322566777ea4405130a213e20a9863336e9d) | OFL 1.1, reserved name Yeomil Mono. Original license preserved and attribution retained. |
| Space Mono | [Nerd Fonts v3.4.0 source OFL](https://github.com/ryanoasis/nerd-fonts/blob/v3.4.0/src/unpatched-fonts/SpaceMono/OFL.txt) and SpaceMono.zip OFL.txt | OFL 1.1, Google copyright, no RFN stated in this file. Trademark notice is preserved. |
| Pretendard | [v1.3.9 LICENSE](https://github.com/orioncactus/pretendard/blob/v1.3.9/LICENSE) and release LICENSE.txt | OFL 1.1, reserved name Pretendard. Release archive notice and embedded copyright preserved. |
| Nerd Fonts | [v3.4.0 LICENSE](https://github.com/ryanoasis/nerd-fonts/blob/v3.4.0/LICENSE) and [audit](https://github.com/ryanoasis/nerd-fonts/blob/v3.4.0/license-audit.md) | Patched OFL fonts remain OFL; patcher software is MIT. No second patching step is used. Icon-specific notices below remain applicable. |

Nerd Fonts' audit distinguishes icon-source permissions. We retain its original
audit and the actual v3.4.0 glyph-source licenses, not just the base font's OFL:

- Codicons (Microsoft) and Font Awesome (Fonticons): CC BY 4.0 notices retained.
- Devicon (konpa and contributors), Font Awesome Extension (André Luiz Gava),
  IEC Power Symbols (Joe Loughry / Bruce Nordman), Octicons (GitHub), Seti UI
  (Jesse Weed), and Powerline Extra: MIT notices retained.
- Material Design Icons (Pictogrammers): source license and Apache 2.0 text retained.
- Pomicons and Weather Icons: their OFL notices retained.
- Powerline Symbols: its original license retained.
- Font Logos (Lukas W): the audit's label `Unlicensed` refers to the
  [Unlicense/public-domain dedication](https://github.com/lukas-w/font-logos/blob/d3bf5d299e54595db1b19681a0cc57ab10454857/LICENSE).
  We preserve that text and the copyright metadata from the v3.4.0 glyph source.

Exact additional source URLs/commits and original glyph-font metadata are
included in the license directory. These sources supplement notices absent
from the release archive. The older Vorillaz Devicons MIT notice is also
preserved as a supplemental historical notice; v3.4.0's glyph metadata points
to Devicon, whose MIT notice is included separately.

## Modifications and redistribution

Spacetendard replaces Jetendard's Latin base with Space Mono Nerd Font Mono,
adds fitted Pretendard glyphs, changes halfwidth metrics, repairs Hangul GSUB
feature references, and renames the generated font family to Spacetendard.
Nerd Fonts' previous modifications (icon addition/scaling) are retained.
Copied Pretendard outlines are scaled/centered; font metadata and formats change.

Every build includes the full license directory beside TTF, OTF, and WOFF2
files. Embedded name records retain the base copyright, add Pretendard and
Jetendard attribution, and carry the full project OFL. Font packages must retain
these notices and component terms. No author endorsement is claimed. Icon or
logo copyright permission does not itself grant trademark permission.

The OFL permits modification, merging, embedding, use, and redistribution,
provided its copyright/license notices and reserved-name requirements are
respected, the derivative remains OFL, and the font is not sold by itself.
Documents and artwork made using the font do not inherit the font license.
See the [official OFL FAQ](https://openfontlicense.org/ofl-faq/).
