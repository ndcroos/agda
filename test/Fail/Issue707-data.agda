-- Andreas, 2016-07-29 issue #707, comment of 2012-10-31

data Bool : Set where true false : Bool

mutual

  data D : Bool → Set where
    c d : D ?

  fixIx : (b : Bool) → D b → D b
  fixIx true  c = c
  fixIx false d = d

-- Works, but maybe questionable.
-- The _ is duplicated into two different internal metas.
