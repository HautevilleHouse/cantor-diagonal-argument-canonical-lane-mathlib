import CantorDiagonalArgumentCanonicalLaneLean.BinaryExpansion

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

-- Construct the diagonal expansion from a listing
def diagonalExpansion (L : Listing) : BinaryExpansion :=
  { bits := fun n => ¬ (L.entries n).bits n }

-- The diagonal expansion is not in the listing
theorem diagonal_not_in_listing (L : Listing) : ∀ n, diagonalExpansion L ≠ L.entries n := by
  intro n
  intro h
  have h_eq : (diagonalExpansion L).bits n = (L.entries n).bits n := by
    simpa [BinaryExpansion.eq] using h
  simp [diagonalExpansion] at h_eq
  exact h_eq (by decide)

-- For any listing, we can produce a CantorAdmittedObject
def cantorAdmittedObjectOfListing (L : Listing) : CantorAdmittedObject :=
  {
    listing := L
    missing := diagonalExpansion L
    missing_not_in_listing := diagonal_not_in_listing L
    missing_constructed := λ n => by
      simp [diagonalExpansion]
  }

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse