import canonicalLaneMathlib.DiagonalSequence

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure DiagonalSequence where
  sequenceSpace : Type
  enumeration : ℕ → (ℕ → sequenceSpace)
  diagonal : ℕ → sequenceSpace
  diagonalProperty : ℕ → Prop
  contradiction : Prop

structure DiagonalSequenceEvidence (D : DiagonalSequence) where
  diagonalPropertyClosed : ∀ n : ℕ, D.diagonalProperty n
  contradictionClosed : D.contradiction

def DiagonalSequenceClosed (D : DiagonalSequence) : Prop :=
  (∀ n : ℕ, D.diagonalProperty n) ∧ D.contradiction

theorem diagonal_sequence_closed_from_evidence (D : DiagonalSequence) (E : DiagonalSequenceEvidence D) :
    DiagonalSequenceClosed D := by
  exact And.intro E.diagonalPropertyClosed E.contradictionClosed

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse