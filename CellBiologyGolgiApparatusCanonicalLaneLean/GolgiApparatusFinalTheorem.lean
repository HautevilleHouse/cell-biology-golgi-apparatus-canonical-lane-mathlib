import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

def ConstrainedGolgiApparatusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_golgi_apparatus_endgame (A : AdmissibleClass) :
    ConstrainedGolgiApparatusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse