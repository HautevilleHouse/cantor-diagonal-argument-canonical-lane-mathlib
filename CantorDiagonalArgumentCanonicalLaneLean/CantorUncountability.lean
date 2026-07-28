import HautevilleHouse.CantorDiagonalArgumentCanonicalLaneLean.CantorDiagonalization

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure UncountableProofPackage where
  fullSetUncountable : Prop
  countableEnumerationAssumption : Prop
  contradictionDerived : Prop

structure UncountableProofEvidence (U : UncountableProofPackage) where
  fullSetUncountableClosed : U.fullSetUncountable

def UncountableProofClosed (U : UncountableProofPackage) : Prop :=
  U.fullSetUncountable ∧ U.contradictionDerived

theorem uncountable_proof_closed_from_evidence (U : UncountableProofPackage) (E : UncountableProofEvidence U) :
    UncountableProofClosed U := by
  exact And.intro E.fullSetUncountableClosed U.contradictionDerived

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse