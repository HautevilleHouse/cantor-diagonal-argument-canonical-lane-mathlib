import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CantorDiagonalArgumentCanonicalLaneLean.CantorMathlibObjects

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure AdmissibleClass where
  object : CantorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CantorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse