import canonicalLaneMathlib.AdmissibleClass
import CantorDiagonalArgumentCanonicalLaneLean.MathlibObjects
import CantorDiagonalArgumentCanonicalLaneLean.DiagonalConstruction
import CantorDiagonalArgumentCanonicalLaneLean.BijectionExclusion

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure AdmissibleClass where
  object : CantorAdmittedObject Unit
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CantorWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

lemma bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.contradiction A.object.surjectivityClaim

lemma gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCantorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cantor_endgame (A : AdmissibleClass) : ConstrainedCantorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse