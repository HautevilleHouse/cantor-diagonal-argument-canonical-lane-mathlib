import CantorDiagonalArgumentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure SequenceSpace where
  carrier : Type
  at : carrier → ℕ → ℕ

structure RealEnumeration (S : SequenceSpace) where
  enumerations : ℕ → S.carrier
  surjectivity : ∀ (x : S.carrier), ∃ (n : ℕ), enumerations n = x

structure DiagonalConstruction (S : SequenceSpace) where
  diagonal : ℕ → ℕ
  differsFromAll : ∀ (n : ℕ), diagonal ≠ (S.at (RealEnumeration.enumerations n) ·)

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse