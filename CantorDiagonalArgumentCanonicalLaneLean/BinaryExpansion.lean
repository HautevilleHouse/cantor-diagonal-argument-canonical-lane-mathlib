import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

-- The type of infinite binary sequences representing numbers in [0,1]
structure BinaryExpansion where
  bits : ℕ → Bool

-- Equality
@[reducible] def BinaryExpansion.eq (x y : BinaryExpansion) : Prop := ∀ n, x.bits n = y.bits n

-- A listing of binary expansions
structure Listing where
  entries : ℕ → BinaryExpansion

-- The Cantor admitted object: a listing and a proof that there is a missing expansion
structure CantorAdmittedObject where
  listing : Listing
  missing : BinaryExpansion
  missing_not_in_listing : ∀ n, missing ≠ listing.entries n
  missing_constructed : ∀ n, (missing.bits n) = ¬ (listing.entries n).bits n

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse