import HautevilleHouse.CantorDiagonalArgumentCanonicalLaneLean.CantorAdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CantorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.uncountableConclusion

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse