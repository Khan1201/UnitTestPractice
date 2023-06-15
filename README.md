# UnitTestPractice 
with ViewInspecter

<br>

## Unit Test 전제조건
<p><b>비즈니스 로직을 별도의 공간(ViewModel)에 분리해줘야 한다.</b></p>
<br>

  ### View
  <img width="580" alt="image" src="https://github.com/Khan1201/UnitTestPractice/assets/87113698/9c9521cc-32c1-414c-9eb7-9852bc250820">
  <br>
  <br>
  
  ### ViewModel
<img width="473" alt="image" src="https://github.com/Khan1201/UnitTestPractice/assets/87113698/167b5dd1-5e77-4818-9ebb-f28f16c20194">
  <br>
  <br>
  
  ### UnitTest
  <img width="618" alt="image" src="https://github.com/Khan1201/UnitTestPractice/assets/87113698/81ba6f1b-be8f-4da6-a8bc-1e943fbd8485">
  
  ### 테스트 케이스 
  > <p>1. 두개의 뷰 컴포넌트가 존재하는가 ?</p>
  > <p>2. 버튼 탭이 정상적으로 작동하는가 ? </p>
  > <p>3. 버튼 탭 시 count가 +1 증가하는가 ?</p>
  > <p>4. count == 3이 되었을때 state 및 title이 바뀌는가 ?</p>

  <br>
  
### 느낀점
> <p>기존 UI테스트는 앱 진입 플로우를 따라야하는데,  ViewInspector + UnitTest 로 특정 데이터 + 특정 뷰를 동시에 테스트 할 수 있었다.
> <p>UnitTest에서 View에 대한 플로우 동작을 테스트 해볼 수 있다.</p>
> <p>초기 뷰 인스턴스를 생성할 때, 뷰 모델의 의존성 주입은 필수이다.</p>
> <p>뷰 인스턴스 생성 후에, inspect()로 뷰를 실체화해야 한다.</p>
> <p>뷰의 컴포넌트에 접근 할 때, viewModel 의 title을 활용하여 접근한다.</p>
