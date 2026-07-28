import canonicalLaneMathlib.CantorSet

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure CantorSet where
  ternaryExpansions : Type
  endpoints : ℕ → (ternaryExpansions → ℚ)
  removedIntervals : ℕ → Set ℝ
  perfectSet : Prop
  uncountable : Prop

structure CantorSetEvidence (C : CantorSet) where
  perfectSetClosed : C.perfectSet
  uncountableClosed : C.uncountable

def CantorSetClosed (C : CantorSet) : Prop :=
  C.perfectSet ∧ C.uncountable

theorem cantor_set_closed_from_evidence (C : CantorSet) (E : CantorSetEvidence C) :
    CantorSetClosed C := by
  exact And.intro E.perfectSetClosed E.uncountableClosed

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse