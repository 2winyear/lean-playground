-- ## Question 8



-- ## Question 9
def testFunc (_x : Type 2) := Type 2

#check testFunc
#check @ testFunc
#check (testFunc)


-- ## Question 25
#check List.cons
-- 답 (a)
-- 세계 다형적 : 유형 세계가 보이는지 확인할 것
-- u는 세계 변수, α 세계 변수가 아니다. (앞에 Type이 있는지)
-- List α에 따라서 유형이 바뀌기 때문이다.
-- 의존함수 = 의존함수 유형


-- ## Question 26
-- 답 (모두 거짓)
def Type.id : Type -> Type := fun x : Type ↦ x

#check (Type.id : (x : Type 0) -> Type 0)
-- 반환되는 값의 유형이 바뀌지 않는다.
-- 따라서 의존 함수가 아니다
-- 정의역(입력값)의 x에 따라서 출력(공역) 값의 유형 변화하는가?
-- (x : Type 0) 뒤에 x의 값이 나오는지 확인


-- ## Question 27
-- 답 (모두 거짓)
-- a false : a는 포함할 수 없고? b는 함수
-- a, b, c false 같은말임
-- d, e : false (의존 순서쌍)
#check (Nat, Type 0)
#check (testFunc)
