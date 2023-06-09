# Flutter Weather APP

## Introduce
- OpenWeather API를 사용하여 Flutter앱 내에서 날씨와 대기질 지수를 알려주는 앱
- GPS의 정보를 받아 현 위치의 날씨와 대기질 지수를 표시
- 처음 로딩 시 로딩중임을 보여주기 위해 로딩 표시기를 사용

## 구현
### 로딩 시 GPS 좌표 정보를 가져옴
### Back-End에서 날씨와 미세먼지 정보를 가져옴
### 가져온 날씨 정보를 각 변수에 저장


## Back-End 서버
- CloudFlare Workers를 사용하여 서버리스 앱으로 개발됨
- OpenWeather API로 부터 자료를 받아와 데이터를 가공 후 재 전송함
- API 요청 횟수의 제한이 있기 때문에 캐시를 사용하여 자료들을 임시 저장

## 라이브러리
- geolocator : 위치 정보
- http : Back-End서버와 통신
- google_fonts : 폰트 라이브러리
- flutter_svg : SVG 파일을 사용하기 위한 라이브러리
- timer_builder : 날짜, 시간 정보를 자동으로 재구성하는 위젯 라이브러리
- flutter_spinkit : 로딩 표시기 라이브러리
- cupertino_icons : 아이콘 라이브러리
- flutter_localizations : 언어 현지화 라이브러리

## API
- Open Weather API
- 일 1000회 요청 무료
- https://openweathermap.org


## Reference
- https://openweathermap.org/current
- https://pub.dev/packages/geolocator
- https://pub.dev/packages/timer_builder
- https://pub.dev/packages/cupertino_icons
- https://pub.dev/packages/flutter_spinkit
- https://developers.cloudflare.com/workers/examples/cache-using-fetch/
- https://pub.dev/packages/http
- https://pub.dev/packages/flutter_svg
- https://kor.pngtree.com/
- https://www.youtube.com/playlist?list=PLQt_pzi-LLfoOpp3b-pnnLXgYpiFEftLB