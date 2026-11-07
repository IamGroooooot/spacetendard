# Attribution and thanks / 출처와 감사

Spacetendard was inspired by Jetendard and uses the same font-combination
approach. It is a fork and modification of Jetendard's actual build code,
not an independent reimplementation. It combines Space Mono Nerd Font Mono
with fitted Pretendard Korean glyphs under the family name Spacetendard.

Spacetendard는 Jetendard에 영감을 받아 같은 방식으로 만든 폰트입니다.
Jetendard의 실제 빌드 코드를 포크·수정하여, 영문·아이콘은 Space Mono Nerd
Font Mono로, 한글은 Pretendard로 결합했습니다.

| Project / 프로젝트 | Contribution / 기여 | Source / 출처 |
| --- | --- | --- |
| Jetendard — kuskhan / Jung Woong Park | Reusable font build, fitting, merge, CLI, and test code / 커스텀할 수 있게 공개해주신 폰트 빌드·병합·폭 맞춤 코드 | https://github.com/kuskhan/jetendard |
| Space Mono — Google / Colophon Foundry | Latin typeface / 개성 있는 영문 서체 | https://github.com/googlefonts/spacemono |
| Nerd Fonts — Ryan L McIntyre and contributors | Space Mono Nerd Font Mono and its icon patching / Space Mono의 Nerd Font Mono 배포 및 아이콘 패치 | https://github.com/ryanoasis/nerd-fonts/tree/v3.4.0/patched-fonts/SpaceMono |
| Pretendard — Kil Hyung-jin / 길형진 | Korean glyphs / 읽기 좋은 한글 글리프 | https://github.com/orioncactus/pretendard |
| Yeomil Mono — Taehoon Kwon | Build implementation ancestry acknowledged by Jetendard / Jetendard가 참고하고 재사용한 빌드 구현의 기반 | https://github.com/taevel02/yeomil-mono |

Thank you to the Jetendard authors for making the code available to customize,
the Space Mono and Nerd Fonts authors for the Latin typeface and icons, and
the Pretendard authors for the Korean typeface. Thanks also to Yeomil Mono and
the individual icon authors whose work made this combination possible.

커스텀할 수 있도록 코드를 공개해주신 Jetendard 제작자분들, 영문 서체와 아이콘을
만들고 배포해주신 Space Mono·Nerd Fonts 제작자분들, 한글 서체를 공개해주신
Pretendard 제작자분들께 감사드립니다. 기반이 된 Yeomil Mono와 각 아이콘의
제작자분들께도 감사드립니다. 이 프로젝트는 그 기여 위에서 만들어졌습니다.

## Modifications / 수정 내역

Spacetendard changes the Latin base from JetBrains Mono Nerd Font Mono to
Space Mono Nerd Font Mono; limits the variants to Regular, Italic, Bold, and
BoldItalic; fits copied Pretendard outlines to the grid; treats supported
halfwidth forms as one cell; repairs Hangul GSUB feature references; and changes
the generated family and package names. Nerd Fonts' earlier icon additions and
scaling are retained. Korean remains upright in italic variants.

Spacetendard modifications are maintained by
[IamGroooooot](https://github.com/IamGroooooot). Upstream copyrights remain with
their respective owners. Original notices, exact source versions, and icon
licenses are retained in the accompanying license directory. This acknowledgement
does not imply sponsorship, endorsement, or permission to use third-party marks.
