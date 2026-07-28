import CantorDiagonalArgumentCanonicalLaneLean.DiagonalizationObject

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

theorem uncountability_of_reals :
    ∀ (S : SequenceSpace) (E : RealEnumeration S),
    ∃ (x : S.carrier), ∀ (n : ℕ), E.enumerations n ≠ x := by
  intro S E
  let diagonal := DiagonalConstruction.mk
    (fun n => 1 - (S.at (E.enumerations n) n)) ?_
  · use diagonal
    intro n
    intro h
    have : S.at (E.enumerations n) n = diagonal n := by rfl
    derive a contradiction
  · ext n; simp

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse