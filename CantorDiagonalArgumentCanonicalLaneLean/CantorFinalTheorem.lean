import HautevilleHouse.CantorDiagonalArgumentCanonicalLaneLean.CantorGateLemmas

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

def ConstrainedCantorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cantor_endgame (A : AdmissibleClass) : ConstrainedCantorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse