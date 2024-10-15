-- def hello := "world"

-- #eval 2

-- /- Define some constants. -/

-- def m : Nat := 1       -- m is a natural number
-- def n : Nat := 0
-- def b1 : Bool := true  -- b1 is a Boolean
-- def b2 : Bool := false

-- /- Check their types. -/

-- #check m            -- output: Nat
-- #check n
-- #check n + 0        -- Nat
-- #check m * (n + 0)  -- Nat
-- #check b1           -- Bool
-- #check b1 && b2     -- "&&" is the Boolean and
-- #check b1 || b2     -- Boolean or
-- #check true         -- Boolean "true"

-- /- Evaluate -/

-- #eval 5 * 4         -- 20
-- #eval m + 2         -- 3
-- #eval b1 && b2      -- false

def double : Nat → Nat :=
  fun x => 2 * x

def vec_1 : Float × Float := (3.14, 2.56)

#check (Nat → Nat) → Nat

def Fun1 : Type := (Nat → Nat) → Nat
def Fun2 : Type := Nat → (Nat → Nat)

def fun1 : Fun1 := fun (x : Nat → Nat) => (0 : Nat)
def fun2 : Nat → (Nat → Nat) := fun(x : Nat) => (double : Nat → Nat)

#check Nat → Nat → Nat
#check Nat → (Nat → Nat)

-- (fun2 1) 의 유형은 Nat → Nat
#check fun2 1
-- (fun2 1) 의 유형은 Nat
#check (fun2 1) 123


#check (1 : Nat)
-- #check (0 : 1) 1은 유형이 아니다. 0과 1은 같은 유형이 아님
#check (Nat : Type) -- 모든 유형은 1개만 가진다.

#check (1 : Nat)
