import CantorDiagonalArgumentCanonicalLaneLean.CantorObjects

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure DiagonalConstructionPackage where
  enumerationExists : Prop
  diagonalSequence : CantorSequence
  differsFromEveryRow : Prop
  uncountabilityConsequence : Prop

structure DiagonalConstructionEvidence (D : DiagonalConstructionPackage) where
  enumerationExistsClosed : D.enumerationExists
  diagonalSequenceClosed : D.diagonalSequence = diagonal (λ n => { f := λ _ => 0 })  -- placeholder
  differsFromEveryRowClosed : D.differsFromEveryRow
  uncountabilityConsequenceClosed : D.uncountabilityConsequence

def DiagonalConstructionClosed (D : DiagonalConstructionPackage) : Prop :=
  D.enumerationExists ∧ D.differsFromEveryRow ∧ D.uncountabilityConsequence

theorem diagonalConstruction_closed_from_evidence (D : DiagonalConstructionPackage) (E : DiagonalConstructionEvidence D) :
    DiagonalConstructionClosed D := by
  exact And.intro E.enumerationExistsClosed (And.intro E.differsFromEveryRowClosed E.uncountabilityConsequenceClosed)

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse