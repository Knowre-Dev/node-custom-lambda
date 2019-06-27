# Knowre node.js custom layer for lambda

* AWS Lambda의 레이어 기능을 이용해 원하는 버전의 node.js를 사용할 수 있게 해주는 레이어입니다.

* 원본은 https://github.com/lambci/node-custom-lambda 입니다.

* 원본에서 달라진 부분은 다음과 같습니다:
  * `v12.x/check.sh` : 오타 수정
  * `v12.x/publish.sh` : 우리가 쓰는 리전만 배포하도록 수정
  * `v12.x/bootstrap.js` : 원본에는 함수 invoke단계에서의 에러시 console을 찍지 않고 HTTP 응답으로만 에러메세지가 나왔는데, 이를 에러를 찍도록 수정했습니다.

* 만약 node.js 버전업을 해야할 경우 사용법은 다음과 같습니다:
  * 먼저 원본 리포의 변경점 커밋들을 적용합니다. 이 과정에서 충돌이 나면 현명하게 처리합니다.
  * `build.sh` 를 실행합니다.
  * `publish.sh` 를 실행합니다.
  * 나오는 레이어의 ARN을 `serverless.yml`의 레이어 ARN에 붙여넣습니다.
