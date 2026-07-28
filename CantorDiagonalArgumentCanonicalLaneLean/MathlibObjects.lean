import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CantorSet (α : Type u) where
  carrier : Type u
  membership : α → Prop

def powerSet (α : Type u) : CantorSet α := {
  carrier := Set α
  membership := λ x => True
}

structure CantorAdmittedObject (α : Type u) where
  set : CantorSet α
  function : α → CantorSet α
  surjectivityClaim : Prop
  diagonalElement : α
  contradiction : surjectivityClaim → False

structure CantorEndgameState where
  object : CantorAdmittedObject Unit

def CantorWitnessClosed (O : CantorAdmittedObject Unit) : Prop :=
  O.contradiction O.surjectivityClaim

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse