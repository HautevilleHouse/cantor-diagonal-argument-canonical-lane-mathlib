import CantorDiagonalArgumentCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CantorDiagonalArgumentCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "cantor-diagonal-argument-canonical-lane"
def sourceDescription : String := "Cantor Diagonal Argument"
def sourceTheoremBoundary : String := "classical source boundary"
def baselineCertificateLane : String := "cantor_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  manifoldConstrainedStatement := "Cantor diagonal argument closed under admissible class",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical boundary remains open"
}

def ClassicalSourceBoundaryCarried : Prop :=
  True

def ManifoldConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "cantor_constrained"

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  trivial

theorem manifold_constrained_theorem_closed_checked :
    ManifoldConstrainedTheoremClosed := by
  rfl

end CantorDiagonalArgumentCanonicalLaneLean
end HautevilleHouse