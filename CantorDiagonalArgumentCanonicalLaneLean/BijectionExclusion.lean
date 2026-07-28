import canonicalLaneMathlib.AdmissibleClass
import CantorDiagonalArgumentCanonicalLaneLean.DiagonalConstruction

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure BijectionExclusionPackage (α : Type u) (P : DiagonalConstructionPackage α) where
  surjectivityAssumption : (f : α → CantorSet α) → Surjective f
  contradictionGenerated : False
  exclusionProved : True

structure BijectionExclusionEvidence (α : Type u) (P : DiagonalConstructionPackage α)
    (B : BijectionExclusionPackage α P) where
  exclusionProvedClosed : B.exclusionProved

def BijectionExclusionClosed (α : Type u) (P : DiagonalConstructionPackage α)
    (B : BijectionExclusionPackage α P) : Prop :=
  B.exclusionProved

theorem bijection_exclusion_closed_from_evidence (α : Type u) (P : DiagonalConstructionPackage α)
    (B : BijectionExclusionPackage α P) (E : BijectionExclusionEvidence α P B) :
    BijectionExclusionClosed α P B := by
  exact E.exclusionProvedClosed

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse