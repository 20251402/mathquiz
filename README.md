# 수학 문제 만들기 — 배포 안내

`index.html`(자동으로 `수학문제만들기웹/index.html`로 이동) + `음원/` 폴더로 이뤄진 **정적 웹사이트**입니다. 빌드가 필요 없어 GitHub에 올린 뒤 Netlify에 연결하면 바로 배포됩니다.

## 폴더 구조
```
프로젝트 06.11/            ← 이 폴더 전체가 저장소(repo)가 됩니다
├─ index.html             ← 진입점(앱으로 리다이렉트)
├─ netlify.toml           ← Netlify 설정(빌드 없음)
├─ .gitignore
├─ 수학문제만들기웹/
│  └─ index.html          ← 실제 앱
└─ 음원/                  ← 배경음악·효과음 (앱이 ../음원/ 로 참조)
```

## 1) GitHub에 올리기
이 폴더(`프로젝트 06.11`)에서 터미널(또는 Git Bash)을 열고:
```bash
git init
git add .
git commit -m "수학 문제 만들기 배포"
git branch -M main
# GitHub에서 새 저장소를 만든 뒤, 그 주소로:
git remote add origin https://github.com/<사용자이름>/<저장소이름>.git
git push -u origin main
```
> GitHub 계정이 없으면 github.com 에서 무료 가입 → 우측 상단 **＋ → New repository** 로 빈 저장소를 먼저 만드세요.

## 2) Netlify에 연결(자동 배포)
1. https://app.netlify.com 접속 → GitHub 계정으로 로그인
2. **Add new site → Import an existing project → GitHub** 선택
3. 방금 올린 저장소 선택
4. 설정은 그대로 두고(빌드 명령 없음, Publish directory `.`) **Deploy** 클릭
5. 잠시 뒤 `https://<사이트이름>.netlify.app` 주소가 생성됩니다.

이후 `git push` 할 때마다 Netlify가 자동으로 다시 배포합니다.

## 참고
- **주소**: 기본 주소로 들어가면 자동으로 앱 화면으로 넘어갑니다.
- **계정 시스템**: 로그인/계정은 브라우저 localStorage에 저장되므로 **접속한 브라우저에만** 남습니다(서버 저장 아님). 다른 기기/브라우저에서는 계정이 공유되지 않습니다.
- **오디오 파일명**: 한글·공백 파일명을 사용합니다. Netlify는 대부분 정상 처리하지만, 혹시 소리가 안 나오면 파일명을 영문으로 바꾸고 코드 경로도 함께 바꾸면 됩니다(원하시면 도와드릴게요).
- **음원 용량**: `음원/게임 배경/제한시간 없음.mp3`가 약 21MB로 가장 큽니다. GitHub·Netlify 무료 한도 안에서 문제없습니다.
