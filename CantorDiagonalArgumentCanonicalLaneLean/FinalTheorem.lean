import CantorDiagonalArgumentCanonicalLaneLean.DiagonalArgument
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

-- Define the admissible class using CantorAdmittedObject
structure AdmissibleClass where
  object : CantorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

-- Bridge closed: the missing expansion is indeed missing and constructed correctly
def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∀ n, A.object.missing ≠ A.object.listing.entries n) ∧
  (∀ n, (A.object.missing.bits n) = ¬ (A.object.listing.entries n).bits n)

-- Gate closed: either endpoint satisfied or remainder recorded
def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

-- Bridge lemma
theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.missing_not_in_listing A.object.missing_constructed

-- Gate lemma
theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

-- Constrained closure definition
def ConstrainedCantorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

-- Endgame theorem: the constrained closure holds for any admissible class
theorem constrained_cantor_endgame (A : AdmissibleClass) : ConstrainedCantorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse