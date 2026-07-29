import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

def ConstrainedGolgiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_golgi_endgame (A : AdmissibleClass) :
    ConstrainedGolgiClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse