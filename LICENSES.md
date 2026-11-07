# License review and distribution notices / 라이선스·재배포 안내


## 한국어 안내

Spacetendard는 Jetendard의 실제 빌드 코드를 포크·수정하여 만들었으며,
Space Mono Nerd Font Mono와 Pretendard를 결합한 파생 폰트입니다.
외부 작업물의 저작권을 Spacetendard 제작자에게 이전하거나, 원본 고지를
Spacetendard의 이름으로 대체하지 않습니다. [NOTICE.md](NOTICE.md)에
제작자·저장소·기여와 수정 내역을 명시했습니다.

| 상황 | 지켜야 할 조건 |
| --- | --- |
| 개인·상업 작업에서 설치·사용 | 원문 라이선스에 따라 사용 가능. 폰트로 만든 문서·이미지·다이어그램은 OFL을 상속하지 않음 |
| 원본·수정 폰트 파일 재배포 | 저작권·OFL 원문과 아이콘별 라이선스·출처 고지를 보존. 배포 ZIP의 `LICENSE`, `licenses`, 고지 문서를 함께 전달 |
| 폰트 수정·결합·이름 변경 | 파생 폰트에 OFL 1.1 유지. 수정 사실을 기록하고, 허락 없이 원본 Reserved Font Name을 사용하지 않음 |
| 다른 폰트·아이콘 추가 | 새 원본의 조건·호환성을 따로 확인하고 필요한 저작권·라이선스·NOTICE를 추가 |
| 판매·앱과 번들링 | OFL 폰트 자체만을 단독 판매할 수 없음. 앱·제품과의 번들링은 원문 조건 준수 |
| 홍보·로고 사용 | 원작자의 보증·후원을 주장하지 않음. 저작권 라이선스가 제삼자 상표권까지 부여하지는 않음 |

`Jetendard`, `Pretendard`, `Yeomil Mono`의 Reserved Font Name 고지는 원문대로
보존하고, 이 파생 폰트의 기본 이름은 `Spacetendard`로 구분했습니다.
Space Mono의 동봉 OFL에는 Reserved Font Name이 명시되어 있지 않지만,
원본의 저작권과 상표 고지를 보존합니다.

### 보증과 책임

폰트와 소프트웨어는 원문 라이선스의 **AS IS(있는 그대로)** 조건으로 제공됩니다.
기존 라이선스의 보증 부인·책임 제한 조항을 변경하거나 추가 보증을 약속하지
않습니다. 사용자가 별도 보증·지원 약정을 하거나 원문 조건을 지키지 않는 경우까지
이 문서가 면책을 보장하지는 않습니다. 아래 내용은 공개된 권리와 준수 방법의
안내이며, 원문에 없는 면책·면책보상 의무·사용 제한을 새로 만들지 않습니다.
각 구성요소의 실제 권리와 의무는 해당 원문 라이선스를 따릅니다.

[OFL 원문과 공식 FAQ](https://openfontlicense.org/ofl-faq/) ·
[프로젝트 LICENSE](LICENSE) · [원문 고지 묶음](src/spacetendard/licenses)

## Source-by-source record

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
