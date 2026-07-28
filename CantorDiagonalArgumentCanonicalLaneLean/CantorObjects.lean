import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure CantorSequence where
  f : ℕ → ℕ

def diagonal (s : ℕ → CantorSequence) : CantorSequence :=
  { f := λ n => 1 - s n .f n }

structure CantorAdmittedObject where
  sequence : CantorSequence
  uncountabilityWitness : Prop
  conclusion : uncountabilityWitness

def CantorWitnessClosed (O : CantorAdmittedObject) : Prop :=
  O.uncountabilityWitness

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse