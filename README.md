# Flutter App Template

[![Codemagic build status](https://api.codemagic.io/apps/5f213b1da98453a2abe96656/5f213b1da98453a2abe96655/status_badge.svg)](https://codemagic.io/apps/5f213b1da98453a2abe96656/5f213b1da98453a2abe96655/latest_build)
[![codecov](https://codecov.io/gh/HelloCuriosity/flutter-app/branch/master/graph/badge.svg?token=P0OTYOBGG4)](https://codecov.io/gh/HelloCuriosity/flutter-app)
[![License](https://img.shields.io/dub/l/vibe-d.svg)](https://github.com/HelloCuriosity/flutter-app/blob/master/LICENSE)
[![ko-fi](https://img.shields.io/badge/donate%20on-Ko--fi-blue.svg)](https://ko-fi.com/U7U4L9F5)

## Codemagic CI Integration
- [Covdecov](https://codecov.io) coverage reports
- Unit testing
- Static code analysis
- Build APKs
- Build Bundles

## Build
The [Makefile](https://github.com/HelloCuriosity/flutter-app/blob/master/Makefile) contains other helpful commands:

### Flutter
- Static analysis -> `make analyze`
- Get dependencies -> `make dependencies`
- Update dependencies -> `make update-dependencies`
- Run tests -> `make unit-test`

### Android
- Assemble -> `make assemble`
- Bundle ->`make bundle`