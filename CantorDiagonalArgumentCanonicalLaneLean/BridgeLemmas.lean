import CantorDiagonalArgumentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CantorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse