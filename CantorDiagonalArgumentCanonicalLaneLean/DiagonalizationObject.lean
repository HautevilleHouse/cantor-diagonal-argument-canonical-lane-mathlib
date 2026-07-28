import CantorDiagonalArgumentCanonicalLaneLean.CantorDiagonalBase

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure DiagonalizationObject where
  sequenceSpace : SequenceSpace
  enumeration : RealEnumeration sequenceSpace
  diagonal : DiagonalConstruction sequenceSpace
  diagonalNotInEnumeration : Prop
  conclusion : diagonalNotInEnumeration

def buildDiagonalizationObject : DiagonalizationObject := by
  sorry

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse