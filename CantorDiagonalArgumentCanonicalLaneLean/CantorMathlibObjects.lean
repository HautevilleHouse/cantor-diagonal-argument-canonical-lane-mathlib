import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure CantorSpace where
  carrier : Type

structure CantorAdmittedObject where
  space : CantorSpace
  sequences : Set (ℕ → ℕ)  -- binary sequences, but using ℕ with 0/1
  uncountableConclusion : space.carrier → Prop

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse