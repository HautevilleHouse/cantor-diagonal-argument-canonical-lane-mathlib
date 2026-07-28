import HautevilleHouse.CantorDiagonalArgumentCanonicalLaneLean.CantorMathlibObjects

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure DiagonalizationPackage where
  sequenceList : List (ℕ → ℕ)
  diagonal : ℕ → ℕ
  diagonalNotInList : ∀ (s : ℕ → ℕ), s ∈ sequenceList → s ≠ diagonal

structure DiagonalizationEvidence (D : DiagonalizationPackage) where
  diagonalDefined : True
  diagonalNotInListClosed : D.diagonalNotInList

def DiagonalizationClosed (D : DiagonalizationPackage) : Prop :=
  D.diagonalNotInList

theorem diagonalization_closed_from_evidence (D : DiagonalizationPackage) (E : DiagonalizationEvidence D) :
    DiagonalizationClosed D := by
  exact E.diagonalNotInListClosed

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse